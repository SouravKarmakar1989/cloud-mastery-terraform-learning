Set-Location "c:/Practice/Learning/Video Extractor to Terraform IAC/cloud-mastery-terraform-learning/apps/knowledge-pipeline/outputs"

$sectionDir = "section-maps"
$outFile = "merged/01_global_concept_map.md"

function Normalize-Concept([string]$text) {
    if ([string]::IsNullOrWhiteSpace($text)) { return "" }
    $t = $text.ToLowerInvariant()
    $t = $t -replace '&', ' and '
    $t = $t -replace '[_\-/]', ' '
    $t = $t -replace '[^a-z0-9\s]', ' '
    $t = $t -replace '\s+', ' '
    $t = $t.Trim()
    $tokens = @()
    foreach ($tok in ($t -split ' ')) {
        if ([string]::IsNullOrWhiteSpace($tok)) { continue }
        $normTok = $tok
        if ($normTok.Length -gt 4 -and $normTok.EndsWith('s')) {
            $normTok = $normTok.Substring(0, $normTok.Length - 1)
        }
        $tokens += $normTok
    }
    return ($tokens -join ' ')
}

$files = Get-ChildItem "$sectionDir/BATCH-*_section_concept_map.md" | Sort-Object Name
$clusters = @{}
$clusterOrder = New-Object System.Collections.Generic.List[string]

foreach ($file in $files) {
    $batchId = [System.IO.Path]::GetFileNameWithoutExtension($file.Name).Split('_')[0]
    $lines = Get-Content $file.FullName

    $course = ""
    $section = ""
    $currentConcept = ""
    $pending = $null

    foreach ($line in $lines) {
        if ($line -match '^- Course:\s+`(.+?)`\s*$') {
            $course = $matches[1]
            continue
        }
        if ($line -match '^- Section:\s+`(.+?)`\s*$') {
            $section = $matches[1]
            continue
        }
        if ($line -match '^###\s+(.+?)\s*$') {
            $currentConcept = $matches[1].Trim()
            continue
        }

        if ($line -match '^- \*\*File:\*\* `(.+?)` \| \*\*Entry:\*\* ([0-9]+) \| \*\*Type:\*\* (.+?)\s*$') {
            $pending = [PSCustomObject]@{
                BatchId       = $batchId
                Course        = $course
                Section       = $section
                Concept       = $currentConcept
                SourceFile    = $matches[1]
                Entry         = [int]$matches[2]
                Type          = $matches[3]
                RawNote       = ""
                SectionMapRef = "$sectionDir/$($file.Name)"
            }
            continue
        }

        if ($null -ne $pending -and $line -match '^\s+-\s+(.*)$') {
            $pending.RawNote = $matches[1]
            $canon = Normalize-Concept $pending.Concept
            if ([string]::IsNullOrWhiteSpace($canon)) { $canon = "unknown concept" }

            if (-not $clusters.ContainsKey($canon)) {
                $clusters[$canon] = [PSCustomObject]@{
                    CanonicalKey  = $canon
                    PrimaryTitle  = $pending.Concept
                    TitleVariants = New-Object System.Collections.Generic.List[string]
                    Occurrences   = New-Object System.Collections.Generic.List[object]
                }
                $clusterOrder.Add($canon)
            }

            $cluster = $clusters[$canon]
            if (-not ($cluster.TitleVariants -contains $pending.Concept)) {
                $cluster.TitleVariants.Add($pending.Concept)
            }
            $cluster.Occurrences.Add($pending)
            $pending = $null
        }
    }
}

$linesOut = New-Object System.Collections.Generic.List[string]
$linesOut.Add('# Global Concept Map')
$linesOut.Add('')
$linesOut.Add('## Merge Scope')
$linesOut.Add("- Input section maps: $($files.Count)")
$linesOut.Add('- Merge rule: identical and near-identical concept labels grouped by conservative normalized title matching (case, punctuation, separator, and simple plural variants).')
$linesOut.Add('- Source-aware merge only: raw extracted coverage is preserved and unsynthesized.')
$linesOut.Add('')

foreach ($key in $clusterOrder) {
    $cluster = $clusters[$key]
    $occ = $cluster.Occurrences

    $linesOut.Add("## Global Concept: $($cluster.PrimaryTitle)")

    if ($cluster.TitleVariants.Count -gt 1) {
        $linesOut.Add('- Label Variants:')
        foreach ($v in ($cluster.TitleVariants | Sort-Object)) {
            $linesOut.Add("  - $v")
        }
    }

    $linesOut.Add('### Appears In:')
    $locGroups = $occ | Group-Object Course, Section | Sort-Object Name
    foreach ($lg in $locGroups) {
        $sample = $lg.Group[0]
        $lectureGroups = $lg.Group | ForEach-Object { $_.SourceFile -replace '\.extraction\.md$','' } | Sort-Object -Unique
        $batches = $lg.Group | ForEach-Object { $_.BatchId } | Sort-Object -Unique

        $linesOut.Add("- $($sample.Course) / $($sample.Section)")
        $linesOut.Add("  - Lecture groups: " + ($lectureGroups -join ', '))
        $linesOut.Add("  - Batches: " + ($batches -join ', '))
    }

    $linesOut.Add('### Source References')
    foreach ($item in ($occ | Sort-Object BatchId, SourceFile, Entry)) {
        $linesOut.Add("- $($item.SectionMapRef) | $($item.SourceFile) | Entry $($item.Entry) | Type $($item.Type)")
    }

    $linesOut.Add('### Raw coverage notes')
    foreach ($item in ($occ | Sort-Object BatchId, SourceFile, Entry)) {
        $linesOut.Add("- [$($item.BatchId)] $($item.Course) / $($item.Section) | Concept: $($item.Concept) | $($item.SourceFile)#$($item.Entry) | Type: $($item.Type)")
        $linesOut.Add("  - $($item.RawNote)")
    }

    $linesOut.Add('')
}

$linesOut | Set-Content -Path $outFile -Encoding UTF8

$totalOccurrences = (($clusterOrder | ForEach-Object { $clusters[$_].Occurrences.Count }) | Measure-Object -Sum).Sum
Write-Output "Wrote $outFile with $($clusterOrder.Count) global concepts and $totalOccurrences total occurrences."
