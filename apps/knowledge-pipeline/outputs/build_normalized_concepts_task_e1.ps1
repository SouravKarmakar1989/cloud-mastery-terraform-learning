Set-Location "c:/Practice/Learning/Video Extractor to Terraform IAC/cloud-mastery-terraform-learning/apps/knowledge-pipeline/outputs"

$globalMapPath = "merged/01_global_concept_map.md"
$outDir = "normalized-concepts"

$targetConcepts = @(
"kubernetes-mental-model",
"cluster-architecture",
"etcd",
"kube-api-server",
"controller-manager",
"scheduler",
"kubelet",
"kube-proxy",
"pods",
"replicasets",
"deployments",
"services",
"namespaces",
"labels-and-selectors",
"imperative-vs-declarative",
"kubectl-apply",
"scheduling",
"taints-and-tolerations",
"node-selectors",
"node-affinity",
"resource-requirements",
"daemonsets",
"static-pods",
"priority-classes",
"admission-controllers",
"logging-and-monitoring",
"application-lifecycle",
"commands-and-arguments",
"environment-variables",
"configmaps",
"secrets",
"multi-container-pods",
"init-containers",
"autoscaling",
"cluster-maintenance",
"upgrades",
"backup-and-restore",
"security-primitives",
"authentication",
"tls",
"certificates",
"kubeconfig",
"api-groups",
"authorization",
"rbac",
"cluster-roles",
"service-accounts",
"image-security",
"security-contexts",
"network-policies",
"crd",
"custom-controllers",
"operator-framework",
"storage",
"csi",
"volumes",
"persistent-volumes",
"persistent-volume-claims",
"storage-class",
"networking",
"cni",
"pod-networking",
"service-networking",
"dns",
"coredns",
"ingress",
"gateway-api",
"cluster-design",
"high-availability",
"kubeadm",
"helm",
"kustomize",
"troubleshooting",
"jsonpath",
"mock-exam-patterns"
)

$conceptKeywordMap = @{
  "kubernetes-mental-model" = @("mental model", "kubernetes trilogy", "core concepts", "architecture", "overview")
  "cluster-architecture" = @("cluster architecture")
  "etcd" = @("etcd")
  "kube-api-server" = @("api server", "kube-api server")
  "controller-manager" = @("controller manager", "kube controller manager")
  "scheduler" = @("scheduler", "kube scheduler")
  "kubelet" = @("kubelet")
  "kube-proxy" = @("kube proxy", "kube-proxy")
  "pods" = @("pods", "pod")
  "replicasets" = @("replicaset", "replica sets")
  "deployments" = @("deployment", "deployments")
  "services" = @("service", "services")
  "namespaces" = @("namespace", "namespaces")
  "labels-and-selectors" = @("label", "selector", "labels and selectors")
  "imperative-vs-declarative" = @("imperative", "declarative")
  "kubectl-apply" = @("kubectl apply", "apply")
  "scheduling" = @("scheduling")
  "taints-and-tolerations" = @("taint", "toleration")
  "node-selectors" = @("node selector", "node selectors")
  "node-affinity" = @("node affinity")
  "resource-requirements" = @("resource requirements", "requests and limits", "limits", "requests")
  "daemonsets" = @("daemonset", "daemonsets")
  "static-pods" = @("static pod", "static pods")
  "priority-classes" = @("priority class", "priority classes")
  "admission-controllers" = @("admission controller", "admission controllers")
  "logging-and-monitoring" = @("logging", "monitoring", "observability")
  "application-lifecycle" = @("application lifecycle", "lifecycle")
  "commands-and-arguments" = @("commands and arguments", "command", "argument")
  "environment-variables" = @("environment variable", "env")
  "configmaps" = @("configmap", "configmaps")
  "secrets" = @("secret", "secrets")
  "multi-container-pods" = @("multi-container", "multi container", "sidecar", "ambassador", "adapter")
  "init-containers" = @("init container", "init containers")
  "autoscaling" = @("autoscaling", "hpa", "scale")
  "cluster-maintenance" = @("cluster maintenance", "maintenance")
  "upgrades" = @("upgrade", "upgrades")
  "backup-and-restore" = @("backup", "restore")
  "security-primitives" = @("security", "security primitives")
  "authentication" = @("authentication", "authenticate")
  "tls" = @("tls")
  "certificates" = @("certificate", "certificates")
  "kubeconfig" = @("kubeconfig")
  "api-groups" = @("api groups", "api group")
  "authorization" = @("authorization", "authorize")
  "rbac" = @("rbac", "role based access")
  "cluster-roles" = @("clusterrole", "cluster role")
  "service-accounts" = @("service account", "service accounts")
  "image-security" = @("image security", "image", "registry", "scan")
  "security-contexts" = @("security context", "security contexts")
  "network-policies" = @("network policy", "network policies")
  "crd" = @("crd", "custom resource definition")
  "custom-controllers" = @("custom controller", "custom controllers", "controller")
  "operator-framework" = @("operator", "operator framework")
  "storage" = @("storage")
  "csi" = @("csi", "container storage interface")
  "volumes" = @("volume", "volumes")
  "persistent-volumes" = @("persistent volume", "persistent volumes", "pv")
  "persistent-volume-claims" = @("persistent volume claim", "persistent volume claims", "pvc")
  "storage-class" = @("storage class", "storageclass")
  "networking" = @("networking", "network")
  "cni" = @("cni", "container network interface")
  "pod-networking" = @("pod networking", "pod network")
  "service-networking" = @("service networking", "service network")
  "dns" = @("dns")
  "coredns" = @("coredns")
  "ingress" = @("ingress")
  "gateway-api" = @("gateway api", "gateway")
  "cluster-design" = @("cluster design", "design")
  "high-availability" = @("high availability", "ha")
  "kubeadm" = @("kubeadm")
  "helm" = @("helm")
  "kustomize" = @("kustomize")
  "troubleshooting" = @("troubleshooting", "troubleshoot")
  "jsonpath" = @("jsonpath")
  "mock-exam-patterns" = @("mock exam", "practice test", "exam tip")
}

function Normalize-Text([string]$s) {
  if ([string]::IsNullOrWhiteSpace($s)) { return "" }
  $t = $s.ToLowerInvariant()
  $t = $t -replace '[^a-z0-9\s\-]', ' '
  $t = $t -replace '\s+', ' '
  return $t.Trim()
}

function Slug-To-Title([string]$slug) {
  $parts = $slug.Split('-') | ForEach-Object {
    if ($_ -eq "api") { "API" }
    elseif ($_ -eq "rbac") { "RBAC" }
    elseif ($_ -eq "csi") { "CSI" }
    elseif ($_ -eq "dns") { "DNS" }
    elseif ($_ -eq "tls") { "TLS" }
    elseif ($_ -eq "crd") { "CRD" }
    elseif ($_ -eq "cka") { "CKA" }
    elseif ($_ -eq "ckad") { "CKAD" }
    else { (Get-Culture).TextInfo.ToTitleCase($_) }
  }
  return ($parts -join ' ')
}

function Take-TopLines($arr, [int]$count) {
  if ($null -eq $arr) { return @() }
  return @($arr | Select-Object -First $count)
}

function Unique-ByText($arr) {
  $seen = @{}
  $out = @()
  foreach ($i in $arr) {
    $k = Normalize-Text([string]$i)
    if ([string]::IsNullOrWhiteSpace($k)) { continue }
    if (-not $seen.ContainsKey($k)) {
      $seen[$k] = $true
      $out += $i
    }
  }
  return $out
}

function Build-Section-From-Notes([string]$header, [object[]]$notes, [int]$maxLines = 8) {
  $out = @("## $header")
  if ($null -eq $notes -or $notes.Count -eq 0) {
    $out += "- No direct source-supported coverage found for this concept in the current merged map."
    $out += ""
    return $out
  }
  $deduped = Unique-ByText $notes
  $selected = Take-TopLines $deduped $maxLines
  if ($selected.Count -eq 0) {
    $out += "- No direct source-supported coverage found for this concept in the current merged map."
    $out += ""
    return $out
  }
  foreach ($n in $selected) {
    if (-not [string]::IsNullOrWhiteSpace([string]$n)) {
      $out += "- $n"
    }
  }
  if (($out | Measure-Object).Count -eq 1) {
    $out += "- No direct source-supported coverage found for this concept in the current merged map."
  }
  $out += ""
  return $out
}

if (!(Test-Path $globalMapPath)) {
  throw "Missing input file: $globalMapPath"
}

if (!(Test-Path $outDir)) {
  New-Item -ItemType Directory -Path $outDir | Out-Null
}

# Parse global map blocks.
$lines = Get-Content $globalMapPath
$blocks = New-Object System.Collections.Generic.List[object]
$current = $null
$mode = ""

foreach ($line in $lines) {
  if ($line -match '^## Global Concept:\s*(.+)$') {
    if ($null -ne $current) {
      $blocks.Add($current)
    }
    $current = [PSCustomObject]@{
      Title = $matches[1].Trim()
      Appears = New-Object System.Collections.Generic.List[object]
      SourceRefs = New-Object System.Collections.Generic.List[object]
      RawNotes = New-Object System.Collections.Generic.List[object]
    }
    $mode = ""
    continue
  }

  if ($null -eq $current) { continue }

  if ($line -match '^### Appears In:') { $mode = "appears"; continue }
  if ($line -match '^### Source References') { $mode = "refs"; continue }
  if ($line -match '^### Raw coverage notes') { $mode = "raw"; continue }

  if ($mode -eq "appears") {
    if ($line -match '^-\s+(.+?)\s*/\s*(.+)$') {
      $current.Appears.Add([PSCustomObject]@{ Course = $matches[1].Trim(); Section = $matches[2].Trim() })
    }
    continue
  }

  if ($mode -eq "refs") {
    if ($line -match '^\-\s+(.+?)\s+\|\s+(.+?)\s+\|\s+Entry\s+([0-9]+)\s+\|\s+Type\s+(.+)$') {
      $current.SourceRefs.Add([PSCustomObject]@{
        SectionMap = $matches[1].Trim(); SourceFile = $matches[2].Trim(); Entry = [int]$matches[3]; Type = $matches[4].Trim()
      })
    }
    continue
  }

  if ($mode -eq "raw") {
    if ($line -match '^\-\s+\[(BATCH\-[0-9]+)\]\s+(.+?)\s*/\s*(.+?)\s+\|\s+Concept:\s+(.+?)\s+\|\s+(.+?)#([0-9]+)\s+\|\s+Type:\s+(.+)$') {
      $current.RawNotes.Add([PSCustomObject]@{
        Batch = $matches[1].Trim()
        Course = $matches[2].Trim()
        Section = $matches[3].Trim()
        Concept = $matches[4].Trim()
        SourceFile = $matches[5].Trim()
        Entry = [int]$matches[6]
        Type = $matches[7].Trim()
        Text = ""
      })
      continue
    }
    if ($line -match '^\s+\-\s+(.*)$') {
      if ($current.RawNotes.Count -gt 0) {
        $current.RawNotes[$current.RawNotes.Count - 1].Text = $matches[1].Trim()
      }
      continue
    }
  }
}
if ($null -ne $current) { $blocks.Add($current) }

# Build normalized file per target concept.
$created = 0
$skipped = 0

foreach ($target in $targetConcepts) {
  $title = Slug-To-Title $target
  $keywords = $conceptKeywordMap[$target]
  if ($null -eq $keywords -or $keywords.Count -eq 0) {
    $keywords = @($target -replace '-', ' ')
  }

  $matchedBlocks = New-Object System.Collections.Generic.List[object]
  foreach ($b in $blocks) {
    $hay = Normalize-Text(($b.Title + " " + (($b.RawNotes | ForEach-Object { $_.Text }) -join " ")))
    $matchScore = 0
    foreach ($kw in $keywords) {
      $kwNorm = Normalize-Text $kw
      if (-not [string]::IsNullOrWhiteSpace($kwNorm) -and $hay.Contains($kwNorm)) { $matchScore++ }
    }
    if ($matchScore -gt 0) {
      $matchedBlocks.Add([PSCustomObject]@{ Block = $b; Score = $matchScore })
    }
  }

  $matchedBlocks = @($matchedBlocks | Sort-Object Score -Descending)
  $topMatched = @($matchedBlocks | Select-Object -First 8)

  $allNotes = New-Object System.Collections.Generic.List[object]
  $allRefs = New-Object System.Collections.Generic.List[object]
  $allAppears = New-Object System.Collections.Generic.List[object]

  foreach ($m in $topMatched) {
    foreach ($n in $m.Block.RawNotes) { $allNotes.Add($n) }
    foreach ($r in $m.Block.SourceRefs) { $allRefs.Add($r) }
    foreach ($a in $m.Block.Appears) { $allAppears.Add($a) }
  }

  $noteTexts = @($allNotes | ForEach-Object { $_.Text } | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
  $defNotes = @($allNotes | Where-Object { $_.Type -match 'Concept|Architecture' } | ForEach-Object { $_.Text })
  if ($defNotes.Count -eq 0) { $defNotes = $noteTexts }

  $whyNotes = @($allNotes | ForEach-Object { $_.Text } | Where-Object { $_ -match '\b(so that|to |helps|used to|in order to|purpose)\b' })
  if ($whyNotes.Count -eq 0) { $whyNotes = $noteTexts }

  $internalNotes = @($allNotes | Where-Object { $_.Type -match 'Architecture|Implementation Step|Operational Insight' } | ForEach-Object { $_.Text })
  if ($internalNotes.Count -eq 0) { $internalNotes = $noteTexts }

  $yamlNotes = @($allNotes | ForEach-Object { $_.Text } | Where-Object { $_ -match 'yaml|manifest|apiversion|kind|spec|metadata' })
  $cmdNotes = @($allNotes | ForEach-Object { $_.Text } | Where-Object { $_ -match 'kubectl|kubeadm|helm|kustomize|jsonpath|command|--' })
  $realWorldNotes = @($allNotes | ForEach-Object { $_.Text } | Where-Object { $_ -match 'lab|practice|production|real|example|cluster|deploy' })
  $pitfallNotes = @($allNotes | Where-Object { $_.Type -match 'Warning/Pitfall' } | ForEach-Object { $_.Text })
  $troubleNotes = @($allNotes | Where-Object { $_.Type -match 'Troubleshooting' } | ForEach-Object { $_.Text })
  $examNotes = @($allNotes | Where-Object { $_.Type -match 'Exam Tip' } | ForEach-Object { $_.Text })

  $courseGroups = @($allNotes | Group-Object Course | Sort-Object Name)

  $linesOut = New-Object System.Collections.Generic.List[string]
  $linesOut.Add("# Normalized Concept: $title")
  $linesOut.Add("")
  $linesOut.Add("- Concept Key: $target")
  $linesOut.Add("- Matched Global Concept Blocks: $($topMatched.Count)")
  $linesOut.Add("- Source-backed Note Entries Used: $($allNotes.Count)")
  $linesOut.Add("")

  foreach ($ln in (Build-Section-From-Notes "1. Definition" $defNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "2. First-Principles Mental Model" $internalNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "3. Why This Exists" $whyNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "4. Internal Working" $internalNotes 12)) { $linesOut.Add($ln) }

  $objLines = New-Object System.Collections.Generic.List[string]
  $objLines.Add("## 5. Key Objects / Fields / Relationships")
  if ($allNotes.Count -eq 0) {
    $objLines.Add("- No direct object/field evidence found for this concept in the current merged map.")
  } else {
    $candidate = @($allNotes | ForEach-Object { $_.Text } | Where-Object { $_ -match 'pod|deployment|service|namespace|label|selector|node|controller|api|configmap|secret|volume|class|role|account|policy|certificate|ingress|gateway|helm|kustomize|kubeadm' })
    if ($candidate.Count -eq 0) { $candidate = $noteTexts }
    foreach ($c in (Take-TopLines (Unique-ByText $candidate) 10)) { $objLines.Add("- $c") }
  }
  $objLines.Add("")
  foreach ($ln in $objLines) { $linesOut.Add($ln) }

  foreach ($ln in (Build-Section-From-Notes "6. YAML Deep Dive" $yamlNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "7. kubectl / command usage" $cmdNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "8. Real-world scenarios" $realWorldNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "9. Pitfalls and misunderstandings" $pitfallNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "10. Troubleshooting angle" $troubleNotes 10)) { $linesOut.Add($ln) }
  foreach ($ln in (Build-Section-From-Notes "11. CKA / CKAD relevance" $examNotes 10)) { $linesOut.Add($ln) }

  $linesOut.Add("## 12. Source Contributions")
  if ($topMatched.Count -eq 0) {
    $linesOut.Add("- No direct global-concept match for this target concept key in the current merged map.")
  } else {
    $linesOut.Add("- Matched Global Concepts:")
    foreach ($m in $topMatched) {
      $linesOut.Add("  - $($m.Block.Title) (match score: $($m.Score), notes: $($m.Block.RawNotes.Count))")
    }

    $linesOut.Add("- Course/Section Perspective Coverage:")
    $byCourseSection = @($allNotes | Group-Object Course, Section | Sort-Object Name)
    foreach ($g in $byCourseSection) {
      $sample = $g.Group[0]
      $linesOut.Add("  - $($sample.Course) / $($sample.Section): $($g.Count) note entries")
    }

    $linesOut.Add("- Explicit Source Reference Samples:")
    foreach ($r in (Take-TopLines $allRefs 20)) {
      $linesOut.Add("  - $($r.SectionMap) | $($r.SourceFile) | Entry $($r.Entry) | Type $($r.Type)")
    }
  }
  $linesOut.Add("")

  $outPath = "$outDir/$target.md"
  $linesOut | Set-Content -Path $outPath -Encoding UTF8
  $created++
}

Write-Output "Task E1 normalization generation completed. Created: $created. Skipped existing: $skipped. Output dir: $outDir"
