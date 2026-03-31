locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    component   = "serverless-appsync"
  }

  # ── GraphQL Schema ──────────────────────────────────────────────────────────
  schema = <<-GRAPHQL
    schema {
      query:        Query
      mutation:     Mutation
      subscription: Subscription
    }

    type Query {
      getStudent(id: ID!): Student
      listStudents(limit: Int, nextToken: String): StudentConnection!
      getCertifications(studentId: ID!, limit: Int, nextToken: String): CertificationConnection!
    }

    type Mutation {
      createStudent(input: CreateStudentInput!): Student!
      updateStudent(id: ID!, input: UpdateStudentInput!): Student!
      deleteStudent(id: ID!): Boolean!
      startCertification(studentId: ID!): WorkflowStartResult!
    }

    type Subscription {
      onStudentUpdated(id: ID!): Student
        @aws_subscribe(mutations: ["updateStudent"])
      onStudentCreated: Student
        @aws_subscribe(mutations: ["createStudent"])
    }

    type Student {
      id:        ID!
      name:      String!
      email:     String!
      age:       Int!
      createdAt: String!
      updatedAt: String!
    }

    type Certification {
      studentId:           ID!
      workflowId:          String!
      certificationStatus: String!
      executionArn:        String
      startedAt:           String!
      completedAt:         String
      failureReason:       String
    }

    type WorkflowStartResult {
      workflowId:   String!
      executionArn: String!
      status:       String!
    }

    type StudentConnection {
      items:     [Student!]!
      nextToken: String
    }

    type CertificationConnection {
      items:     [Certification!]!
      nextToken: String
    }

    input CreateStudentInput {
      name:  String!
      email: String!
      age:   Int!
    }

    input UpdateStudentInput {
      name:  String
      email: String
      age:   Int
    }
  GRAPHQL

  # ── VTL Resolver templates ──────────────────────────────────────────────────

  vtl = {
    "Query.getStudent.req" = <<-VTL
      {
        "version" : "2017-02-28",
        "operation" : "GetItem",
        "key" : {
          "id": $util.dynamodb.toDynamoDBJson($ctx.args.id)
        }
      }
    VTL

    "Query.getStudent.res" = <<-VTL
      #if($ctx.error)
        $util.error($ctx.error.message, $ctx.error.type)
      #end
      #if(!$ctx.result)
        $util.error("Student not found", "NotFound")
      #end
      $util.toJson($ctx.result)
    VTL

    "Query.listStudents.req" = <<-VTL
      {
        "version" : "2017-02-28",
        "operation" : "Scan",
        #if($ctx.args.limit)
          "limit": $ctx.args.limit,
        #end
        #if($ctx.args.nextToken)
          "nextToken": "$ctx.args.nextToken",
        #end
        "consistentRead": false
      }
    VTL

    "Query.listStudents.res" = <<-VTL
      #if($ctx.error)
        $util.error($ctx.error.message, $ctx.error.type)
      #end
      {
        "items": $util.toJson($ctx.result.items),
        #if($ctx.result.nextToken)
          "nextToken": "$ctx.result.nextToken"
        #end
      }
    VTL

    "Query.getCertifications.req" = <<-VTL
      {
        "version" : "2017-02-28",
        "operation" : "Query",
        "query" : {
          "expression" : "studentId = :studentId",
          "expressionValues" : {
            ":studentId" : $util.dynamodb.toDynamoDBJson($ctx.args.studentId)
          }
        },
        #if($ctx.args.limit)
          "limit": $ctx.args.limit,
        #end
        #if($ctx.args.nextToken)
          "nextToken": "$ctx.args.nextToken",
        #end
        "scanIndexForward": false
      }
    VTL

    "Query.getCertifications.res" = <<-VTL
      #if($ctx.error)
        $util.error($ctx.error.message, $ctx.error.type)
      #end
      {
        "items": $util.toJson($ctx.result.items),
        #if($ctx.result.nextToken)
          "nextToken": "$ctx.result.nextToken"
        #end
      }
    VTL

    "Mutation.createStudent.req" = <<-VTL
      #set($id = $util.autoId())
      #set($now = $util.time.nowISO8601())
      {
        "version" : "2017-02-28",
        "operation" : "PutItem",
        "key" : {
          "id": $util.dynamodb.toDynamoDBJson($id)
        },
        "attributeValues" : {
          "id":        $util.dynamodb.toDynamoDBJson($id),
          "name":      $util.dynamodb.toDynamoDBJson($ctx.args.input.name),
          "email":     $util.dynamodb.toDynamoDBJson($ctx.args.input.email),
          "age":       $util.dynamodb.toDynamoDBJson($ctx.args.input.age),
          "createdAt": $util.dynamodb.toDynamoDBJson($now),
          "updatedAt": $util.dynamodb.toDynamoDBJson($now)
        },
        "condition" : {
          "expression" : "attribute_not_exists(id)"
        }
      }
    VTL

    "Mutation.createStudent.res" = <<-VTL
      #if($ctx.error)
        $util.error($ctx.error.message, $ctx.error.type)
      #end
      $util.toJson($ctx.result)
    VTL

    "Mutation.updateStudent.req" = <<-VTL
      #set($now = $util.time.nowISO8601())
      #set($expNames = {})
      #set($expValues = {})
      #set($setExpr = [])
      #foreach($entry in $ctx.args.input.entrySet())
        #set($k = $entry.key)
        #set($v = $entry.value)
        #if(!$util.isNull($v))
          $util.qr($expNames.put("#$k", "$k"))
          $util.qr($expValues.put(":$k", $util.dynamodb.toDynamoDB($v)))
          $util.qr($setExpr.add("#$k = :$k"))
        #end
      #end
      $util.qr($expNames.put("#updatedAt", "updatedAt"))
      $util.qr($expValues.put(":updatedAt", $util.dynamodb.toDynamoDB($now)))
      $util.qr($setExpr.add("#updatedAt = :updatedAt"))
      {
        "version" : "2017-02-28",
        "operation" : "UpdateItem",
        "key" : {
          "id": $util.dynamodb.toDynamoDBJson($ctx.args.id)
        },
        "update" : {
          "expression" : "SET #exprs($setExpr)",
          "expressionNames"  : $util.toJson($expNames),
          "expressionValues" : $util.toJson($expValues)
        },
        "condition" : {
          "expression" : "attribute_exists(id)"
        }
      }
    VTL

    "Mutation.updateStudent.res" = <<-VTL
      #if($ctx.error)
        $util.error($ctx.error.message, $ctx.error.type)
      #end
      $util.toJson($ctx.result)
    VTL

    "Mutation.deleteStudent.req" = <<-VTL
      {
        "version" : "2017-02-28",
        "operation" : "DeleteItem",
        "key" : {
          "id": $util.dynamodb.toDynamoDBJson($ctx.args.id)
        },
        "condition" : {
          "expression" : "attribute_exists(id)"
        }
      }
    VTL

    "Mutation.deleteStudent.res" = <<-VTL
      #if($ctx.error)
        $util.error($ctx.error.message, $ctx.error.type)
      #end
      true
    VTL

    "Mutation.startCertification.req" = <<-VTL
      {
        "version" : "2017-02-28",
        "operation" : "Invoke",
        "payload" : {
          "field"     : "startCertification",
          "studentId" : "$ctx.args.studentId",
          "identity"  : $util.toJson($ctx.identity)
        }
      }
    VTL

    "Mutation.startCertification.res" = <<-VTL
      #if($ctx.error)
        $util.error($ctx.error.message, $ctx.error.type)
      #end
      $util.toJson($ctx.result)
    VTL
  }
}
