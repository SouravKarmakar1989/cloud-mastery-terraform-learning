$base = "C:\Practice\Learning\Video Extractor to Terraform IAC\cloud-mastery-terraform-learning\apps\knowledge-pipeline"
Set-Location $base

$mdFiles = Get-ChildItem -Path "Knowledge Base\AWS" -Filter "*.md" -Recurse | Select-Object -ExpandProperty FullName

$totalRefs = 0
$missingRefs = 0
$missingList = [System.Collections.Generic.List[string]]::new()

foreach ($f in $mdFiles) {
    $lines = Get-Content -LiteralPath $f
    foreach ($line in $lines) {
        $ms = [regex]::Matches($line, 'outputs/[^,>]+?\.txt')
        foreach ($m in $ms) {
            $totalRefs++
            $p = $m.Value.Replace('/', '\')
            if (-not (Test-Path -LiteralPath $p)) {
                $missingRefs++
                $missingList.Add($m.Value)
            }
        }
    }
}

Write-Host "TOTAL_REFS=$totalRefs"
Write-Host "MISSING_REFS=$missingRefs"
if ($missingRefs -gt 0) {
    $missingList | Sort-Object -Unique | ForEach-Object { Write-Host "  MISSING: $_" }
}
