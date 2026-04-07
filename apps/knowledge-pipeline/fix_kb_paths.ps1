$base = "C:\Practice\Learning\Video Extractor to Terraform IAC\cloud-mastery-terraform-learning\apps\knowledge-pipeline"
Set-Location $base

$mdFiles = Get-ChildItem -Path "Knowledge Base\AWS" -Filter "*.md" -Recurse | Select-Object -ExpandProperty FullName

$fixCount = 0
foreach ($f in $mdFiles) {
    $raw = Get-Content -LiteralPath $f -Raw
    $new = $raw `
        -replace 'outputs/AWS Speciality/','outputs/AWS/AWS Speciality/' `
        -replace 'outputs/aws-certified-developer-associate-dva-c01/','outputs/AWS/aws-certified-developer-associate-DVA-C01/' `
        -replace 'outputs/aws-certified-solutions-architect-associate-saa-c03/','outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/' `
        -replace 'outputs/aws-solutions-architect-professional/','outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/' `
        -replace 'outputs/aws-certified-cloudops-associate/','outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/' `
        -replace 'outputs/aws-certified-devops-engineer-professional-hands-on/','outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/' `
        -replace 'outputs/AWS AI/','outputs/AWS/AWS AI/' `
        -replace 'outputs/AWS Storage and DB/','outputs/AWS/AWS Storage and DB/'
    if ($new -ne $raw) {
        Set-Content -LiteralPath $f -Value $new -Encoding UTF8 -NoNewline
        $fixCount++
    }
}

Write-Host "Files updated: $fixCount"
