Set-Location "c:/Practice/Learning/Video Extractor to Terraform IAC/cloud-mastery-terraform-learning/apps/knowledge-pipeline/outputs"

$masterPath = "learning-path/00_k8s_master_learning_path.md"
$conceptDir = "normalized-concepts"
$outputDir = "knowledge-base/Kubernetes/phases"

function Get-BulletsFromSection([string[]]$lines, [string]$sectionHeader) {
    $results = @()
    $capture = $false
    foreach ($line in $lines) {
        if ($line -match '^##\s+') {
            if ($capture) { break }
            if ($line.Trim() -eq "## $sectionHeader") {
                $capture = $true
                continue
            }
        }
        if ($capture -and $line -match '^\-\s+(.*)$') {
            $results += $matches[1].Trim()
        }
    }
    return $results
}

function Unique-Text([object[]]$items) {
    $seen = @{}
    $out = @()
    foreach ($item in $items) {
        $key = ([string]$item).Trim().ToLowerInvariant()
        if ([string]::IsNullOrWhiteSpace($key)) { continue }
        if (-not $seen.ContainsKey($key)) {
            $seen[$key] = $true
            $out += [string]$item
        }
    }
    return $out
}

function Take-Lines([object[]]$items, [int]$count) {
    return @($items | Select-Object -First $count)
}

function Read-Concept([string]$conceptName) {
    $path = Join-Path $conceptDir ($conceptName + ".md")
    if (-not (Test-Path $path)) {
        throw "Missing normalized concept file: $path"
    }
    $lines = Get-Content $path
    return [PSCustomObject]@{
        Name = $conceptName
        Path = $path
        Title = (($lines | Select-Object -First 1) -replace '^# Normalized Concept:\s*', '').Trim()
        Definition = Get-BulletsFromSection $lines "1. Definition"
        MentalModel = Get-BulletsFromSection $lines "2. First-Principles Mental Model"
        WhyExists = Get-BulletsFromSection $lines "3. Why This Exists"
        Internal = Get-BulletsFromSection $lines "4. Internal Working"
        Objects = Get-BulletsFromSection $lines "5. Key Objects / Fields / Relationships"
        YAML = Get-BulletsFromSection $lines "6. YAML Deep Dive"
        Commands = Get-BulletsFromSection $lines "7. kubectl / command usage"
        Scenarios = Get-BulletsFromSection $lines "8. Real-world scenarios"
        Pitfalls = Get-BulletsFromSection $lines "9. Pitfalls and misunderstandings"
        Troubleshooting = Get-BulletsFromSection $lines "10. Troubleshooting angle"
        Exam = Get-BulletsFromSection $lines "11. CKA / CKAD relevance"
    }
}

$phasePlan = @(
    [PSCustomObject]@{
        Number = 1
        File = "PHASE-1_foundations_and_control_plane.md"
        Title = "Foundations And Control Plane"
        Goal = "Build the mental model, control-plane understanding, and API-first operating habits needed before working with higher-level Kubernetes objects."
        Lenses = "All three lenses equally. CKAD needs enough control-plane context to reason about workload behavior. CKA and platform/architect learners need deep system understanding here."
        Modules = @(
            [PSCustomObject]@{
                Title = "Mental Model And Core Architecture"
                Overview = "This module establishes what Kubernetes is trying to do, what a cluster actually contains, and how work flows from desired state into running workloads."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Kubernetes Mental Model And Cluster Architecture"; Concepts = @("kubernetes-mental-model", "cluster-architecture") },
                    [PSCustomObject]@{ Title = "Control-Plane And Node Internals"; Concepts = @("etcd", "kube-api-server", "controller-manager", "scheduler", "kubelet", "kube-proxy") }
                )
            },
            [PSCustomObject]@{
                Title = "API-Driven Operations"
                Overview = "This module shifts the learner from object recognition to API-centered interaction, which is the foundation for declarative cluster operation."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Declarative Interaction And Client Context"; Concepts = @("imperative-vs-declarative", "kubectl-apply", "api-groups", "kubeconfig") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 2
        File = "PHASE-2_workload_primitives.md"
        Title = "Workload Primitives"
        Goal = "Move from cluster internals to the first application-facing objects that define, replicate, expose, and isolate workloads."
        Lenses = "CKAD first, then CKA and platform. This is where the workload model becomes concrete."
        Modules = @(
            [PSCustomObject]@{
                Title = "Core Workload Objects"
                Overview = "This module teaches the baseline object model that nearly every later concept depends on: pods, labels, replication, services, and namespaces."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Pods And Labels As The Smallest Deployable Unit"; Concepts = @("pods", "labels-and-selectors") },
                    [PSCustomObject]@{ Title = "Replication And Rollout Primitives"; Concepts = @("replicasets", "deployments") },
                    [PSCustomObject]@{ Title = "Namespaces, Services, And Discovery Boundaries"; Concepts = @("services", "namespaces") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 3
        File = "PHASE-3_application_configuration_and_delivery.md"
        Title = "Application Configuration And Delivery"
        Goal = "Teach how workloads become configurable, composable, and reusable across environments."
        Lenses = "CKAD primary, platform secondary. This phase converts raw object knowledge into deployment practice."
        Modules = @(
            [PSCustomObject]@{
                Title = "Runtime Configuration"
                Overview = "This module focuses on how container behavior is shaped at runtime and how application configuration is externalized."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Command Surface And Application Lifecycle Basics"; Concepts = @("commands-and-arguments", "environment-variables", "application-lifecycle") },
                    [PSCustomObject]@{ Title = "Externalized Configuration And Sensitive Data"; Concepts = @("configmaps", "secrets") }
                )
            },
            [PSCustomObject]@{
                Title = "Pod Composition"
                Overview = "This module teaches how multiple containers cooperate inside a pod and how ordered initialization changes startup behavior."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Multi-Container Coordination Patterns"; Concepts = @("multi-container-pods", "init-containers") }
                )
            },
            [PSCustomObject]@{
                Title = "Packaging And Overlays"
                Overview = "This module teaches reusable packaging and environment-specific customization without abandoning declarative workflows."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Packaging Reusable Deployments"; Concepts = @("helm", "kustomize") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 4
        File = "PHASE-4_scheduling_and_compute_placement.md"
        Title = "Scheduling And Compute Placement"
        Goal = "Explain how Kubernetes decides where workloads run and how operators influence compute placement behavior."
        Lenses = "CKA primary, platform secondary. Placement control is a key operator skill."
        Modules = @(
            [PSCustomObject]@{
                Title = "Scheduling Foundations"
                Overview = "This module teaches the basic scheduler inputs first, then adds increasingly specific placement and priority controls."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Scheduling Inputs, Resource Math, And First Placement Controls"; Concepts = @("scheduling", "resource-requirements", "node-selectors") },
                    [PSCustomObject]@{ Title = "Affinity, Taints, And Priority"; Concepts = @("taints-and-tolerations", "node-affinity", "priority-classes") },
                    [PSCustomObject]@{ Title = "Special Placement Patterns And Elasticity"; Concepts = @("daemonsets", "static-pods", "autoscaling") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 5
        File = "PHASE-5_networking_and_traffic_flow.md"
        Title = "Networking And Traffic Flow"
        Goal = "Build the model for pod-to-pod, pod-to-service, and external traffic flow, then layer policy and entry models on top."
        Lenses = "CKA primary, CKAD secondary, platform secondary."
        Modules = @(
            [PSCustomObject]@{
                Title = "Cluster Networking Foundations"
                Overview = "This module gives the learner the internal traffic model required before ingress, policy, and external exposure will make sense."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Networking Model, CNI, DNS, And Service Reachability"; Concepts = @("networking", "cni", "pod-networking", "service-networking", "dns", "coredns") }
                )
            },
            [PSCustomObject]@{
                Title = "Traffic Exposure And Policy"
                Overview = "This module covers north-south traffic entry and east-west traffic restriction."
                Lessons = @(
                    [PSCustomObject]@{ Title = "North-South Exposure And East-West Restrictions"; Concepts = @("ingress", "gateway-api", "network-policies") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 6
        File = "PHASE-6_storage_and_stateful_workloads.md"
        Title = "Storage And Stateful Workloads"
        Goal = "Teach how Kubernetes models storage, binds workloads to persistent state, and integrates with external storage systems."
        Lenses = "CKA primary, platform secondary."
        Modules = @(
            [PSCustomObject]@{
                Title = "Core Storage Objects"
                Overview = "This module starts with the storage object chain before discussing external integration and recovery."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Volumes, Persistence, And Claim Binding"; Concepts = @("storage", "volumes", "persistent-volumes", "persistent-volume-claims", "storage-class") },
                    [PSCustomObject]@{ Title = "CSI And Recovery Thinking"; Concepts = @("csi", "backup-and-restore") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 7
        File = "PHASE-7_security_and_access_control.md"
        Title = "Security And Access Control"
        Goal = "Connect trust, authentication, authorization, and runtime hardening into one Kubernetes security model."
        Lenses = "CKA primary, platform primary, CKAD important."
        Modules = @(
            [PSCustomObject]@{
                Title = "Auth And Trust Chain"
                Overview = "This module establishes who can talk to the cluster, how the cluster decides to trust them, and how client context carries access."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Identity, Transport Trust, And Client Access"; Concepts = @("security-primitives", "authentication", "tls", "certificates", "kubeconfig") }
                )
            },
            [PSCustomObject]@{
                Title = "Authorization Model"
                Overview = "This module explains how Kubernetes constrains actions after identity is established."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Authorization Boundaries And Role-Based Access"; Concepts = @("authorization", "rbac", "cluster-roles", "api-groups", "service-accounts") }
                )
            },
            [PSCustomObject]@{
                Title = "Runtime And Admission Security"
                Overview = "This module moves from access control into workload hardening and request-time policy enforcement."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Workload Hardening And Admission-Time Guardrails"; Concepts = @("image-security", "security-contexts", "admission-controllers") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 8
        File = "PHASE-8_operations_design_and_lifecycle.md"
        Title = "Operations, Design, And Lifecycle"
        Goal = "Teach how clusters are designed, bootstrapped, maintained, observed, and debugged under real operating conditions."
        Lenses = "CKA primary, platform primary."
        Modules = @(
            [PSCustomObject]@{
                Title = "Cluster Design And Bootstrap"
                Overview = "This module connects topology decisions to bootstrap and availability choices."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Designing And Bootstrapping Clusters"; Concepts = @("cluster-design", "high-availability", "kubeadm") }
                )
            },
            [PSCustomObject]@{
                Title = "Maintenance And Observability"
                Overview = "This module teaches safe lifecycle management and the feedback systems that make operations repeatable."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Keep The Cluster Running Safely"; Concepts = @("cluster-maintenance", "upgrades", "logging-and-monitoring") }
                )
            },
            [PSCustomObject]@{
                Title = "Troubleshooting And Exam Execution"
                Overview = "This module converts broad knowledge into fast inspection habits and reliable execution under time pressure."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Failure Isolation And Fast Inspection"; Concepts = @("troubleshooting", "jsonpath") },
                    [PSCustomObject]@{ Title = "Exam Pattern Recognition And Practice Strategy"; Concepts = @("mock-exam-patterns") }
                )
            }
        )
    },
    [PSCustomObject]@{
        Number = 9
        File = "PHASE-9_extensibility_and_platform_building.md"
        Title = "Extensibility And Platform Building"
        Goal = "Show how Kubernetes becomes a programmable control platform through custom APIs, controllers, and operator-style automation."
        Lenses = "Platform/architect primary, CKA secondary."
        Modules = @(
            [PSCustomObject]@{
                Title = "Custom APIs And Controllers"
                Overview = "This module is the capstone: it only makes sense after the learner already understands the native reconciliation model and object lifecycle."
                Lessons = @(
                    [PSCustomObject]@{ Title = "Extending Kubernetes Into A Platform"; Concepts = @("crd", "custom-controllers", "operator-framework") }
                )
            }
        )
    }
)

if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
}

foreach ($phase in $phasePlan) {
    $out = New-Object System.Collections.Generic.List[string]
    $out.Add("# Phase $($phase.Number): $($phase.Title)")
    $out.Add("")
    $out.Add("## Phase Goal")
    $out.Add("- $($phase.Goal)")
    $out.Add("")
    $out.Add("## Best-Fit Lens")
    $out.Add("- $($phase.Lenses)")
    $out.Add("")

    $phaseConcepts = @()
    foreach ($module in $phase.Modules) {
        foreach ($lesson in $module.Lessons) {
            $phaseConcepts += $lesson.Concepts
        }
    }
    $out.Add("## Concepts In This Phase")
    foreach ($c in $phaseConcepts) {
        $out.Add("- $c")
    }
    $out.Add("")

    foreach ($module in $phase.Modules) {
        $out.Add("## Module: $($module.Title)")
        $out.Add("")
        $out.Add("### Module Overview")
        $out.Add("- $($module.Overview)")
        $moduleConcepts = @()
        foreach ($lesson in $module.Lessons) { $moduleConcepts += $lesson.Concepts }
        $out.Add("- Concepts in this module: " + ($moduleConcepts -join ', '))
        $out.Add("")

        foreach ($lesson in $module.Lessons) {
            $conceptData = @($lesson.Concepts | ForEach-Object { Read-Concept $_ })
            $def = @(); $mental = @(); $why = @(); $internal = @(); $yaml = @(); $commands = @(); $pitfalls = @(); $trouble = @(); $objects = @(); $scenarios = @(); $exam = @()
            foreach ($cd in $conceptData) {
                $def += $cd.Definition
                $mental += $cd.MentalModel
                $why += $cd.WhyExists
                $internal += $cd.Internal
                $yaml += $cd.YAML
                $commands += $cd.Commands
                $pitfalls += $cd.Pitfalls
                $trouble += $cd.Troubleshooting
                $objects += $cd.Objects
                $scenarios += $cd.Scenarios
                $exam += $cd.Exam
            }
            $def = Unique-Text $def
            $mental = Unique-Text $mental
            $why = Unique-Text $why
            $internal = Unique-Text $internal
            $yaml = Unique-Text $yaml
            $commands = Unique-Text $commands
            $pitfalls = Unique-Text $pitfalls
            $trouble = Unique-Text $trouble
            $objects = Unique-Text $objects
            $scenarios = Unique-Text $scenarios
            $exam = Unique-Text $exam

            $out.Add("### Lesson: $($lesson.Title)")
            $out.Add("")
            $out.Add("#### Concepts Covered")
            foreach ($c in $lesson.Concepts) { $out.Add("- $c") }
            $out.Add("")

            $out.Add("#### Lesson Explanation")
            foreach ($line in (Take-Lines ($def + $mental + $why + $internal) 12)) { $out.Add("- $line") }
            $out.Add("")

            $out.Add("#### Key Structural Points")
            foreach ($line in (Take-Lines ($objects + $internal) 10)) { $out.Add("- $line") }
            $out.Add("")

            $out.Add("#### Key YAML Examples")
            if ($yaml.Count -eq 0) {
                $out.Add("- No direct YAML-heavy examples were surfaced in the normalized concept set for this lesson.")
            } else {
                foreach ($line in (Take-Lines $yaml 10)) { $out.Add("- $line") }
            }
            $out.Add("")

            $out.Add("#### Key Commands")
            if ($commands.Count -eq 0) {
                $out.Add("- No direct command-focused examples were surfaced in the normalized concept set for this lesson.")
            } else {
                foreach ($line in (Take-Lines $commands 12)) { $out.Add("- $line") }
            }
            $out.Add("")

            $out.Add("#### Real-World Angle")
            if ($scenarios.Count -eq 0) {
                $out.Add("- Use this lesson to connect control intent to cluster behavior in your own lab or shared cluster environment.")
            } else {
                foreach ($line in (Take-Lines $scenarios 8)) { $out.Add("- $line") }
            }
            $out.Add("")

            $out.Add("#### Pitfalls")
            if ($pitfalls.Count -eq 0) {
                $out.Add("- Watch for relationship mistakes between objects, especially when names, scopes, or API fields look similar but behave differently.")
            } else {
                foreach ($line in (Take-Lines $pitfalls 10)) { $out.Add("- $line") }
            }
            $out.Add("")

            $out.Add("#### Troubleshooting Focus")
            if ($trouble.Count -eq 0) {
                foreach ($line in (Take-Lines ($commands + $internal) 6)) { $out.Add("- Start troubleshooting by re-reading the desired object model and then verifying the concrete object state with cluster inspection commands: $line") }
            } else {
                foreach ($line in (Take-Lines ($trouble + $commands) 10)) { $out.Add("- $line") }
            }
            $out.Add("")

            $out.Add("#### Revision Points")
            foreach ($line in (Take-Lines ($why + $objects + $exam) 10)) { $out.Add("- $line") }
            $out.Add("")

            $out.Add("#### Step-By-Step Hands-On")
            $out.Add("1. Read the normalized concept files for this lesson in the listed concept order.")
            $out.Add("2. Recreate one minimal object or workflow from the YAML examples and note which fields are essential versus optional.")
            if ($commands.Count -gt 0) {
                $out.Add("3. Run the core inspection and mutation commands highlighted in the command list, then compare expected versus actual object state.")
            } else {
                $out.Add("3. Use kubectl get, describe, and apply workflows to inspect and mutate the relevant objects for this lesson.")
            }
            $out.Add("4. Intentionally trigger one common mistake from the pitfall list, then recover from it using the troubleshooting focus above.")
            $out.Add("5. End the lesson by summarizing the dependency chain: what this lesson assumes, and what later topics depend on it.")
            $out.Add("")
        }
    }

    $out.Add("## Phase Revision Checklist")
    $out.Add("- Can you explain why each module in this phase comes before the next one?")
    $out.Add("- Can you identify the core objects and command surfaces without relying on memory shortcuts alone?")
    $out.Add("- Can you recreate at least one minimal YAML or kubectl workflow for every lesson in this phase?")
    $out.Add("- Can you describe the main failure modes and the first inspection steps you would use to diagnose them?")
    $out.Add("")
    $out.Add("## Source Basis")
    $out.Add("- Structural source: learning-path/00_k8s_master_learning_path.md")
    $out.Add("- Concept detail source: normalized-concepts/")

    $outPath = Join-Path $outputDir $phase.File
    $out | Set-Content -Path $outPath -Encoding UTF8
}

Write-Output ("Generated phase study guides: " + ($phasePlan.Count))
