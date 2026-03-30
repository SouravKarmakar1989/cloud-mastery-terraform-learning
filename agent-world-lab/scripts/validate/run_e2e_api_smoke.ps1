$ErrorActionPreference = 'Stop'

$results = @()
function Add-Result($Step,$Status,$Details){
  $script:results += [pscustomobject]@{ Step=$Step; Status=$Status; Details=$Details }
}

function Login($email,$password){
  $body = @{ email=$email; password=$password } | ConvertTo-Json
  return (Invoke-RestMethod -Method Post -Uri 'http://localhost:5000/api/auth/login' -ContentType 'application/json' -Body $body).accessToken
}

function New-AuthHeader($token){
  return @{ Authorization = "Bearer $token" }
}

try {
  $health = Invoke-RestMethod -Method Get -Uri 'http://localhost:5000/api/health'
  Add-Result 'health' 'PASS' ("status=" + $health.status)
} catch {
  Add-Result 'health' 'FAIL' $_.Exception.Message
}

$dev=$null; $apr=$null; $adm=$null; $ana=$null; $view=$null

try { $dev = Login 'developer@agentworld.local' 'DeveloperPass!1'; Add-Result 'login-developer' 'PASS' 'ok' } catch { Add-Result 'login-developer' 'FAIL' $_.Exception.Message }
try { $apr = Login 'approver@agentworld.local' 'ApproverPass!1'; Add-Result 'login-approver' 'PASS' 'ok' } catch { Add-Result 'login-approver' 'FAIL' $_.Exception.Message }
try { $adm = Login 'admin@agentworld.local' 'AdminPass!1'; Add-Result 'login-admin' 'PASS' 'ok' } catch { Add-Result 'login-admin' 'FAIL' $_.Exception.Message }
try { $ana = Login 'analyst@agentworld.local' 'AnalystPass!1'; Add-Result 'login-analyst' 'PASS' 'ok' } catch { Add-Result 'login-analyst' 'FAIL' $_.Exception.Message }
try { $view = Login 'viewer@agentworld.local' 'ViewerPass!1'; Add-Result 'login-viewer' 'PASS' 'ok' } catch { Add-Result 'login-viewer' 'FAIL' $_.Exception.Message }

$session = ''
$thread = ''
$approval = ''

if($dev){
  try {
    $chatBody = @{
      message = 'hello automated e2e'
      sessionId = $null
      threadId = $null
      cloudProvider = 'azure'
      agentFrameworkMode = 'baseline'
      modelBackendMode = 'baseline'
      toolMode = 'default'
    } | ConvertTo-Json
    $chat = Invoke-RestMethod -Method Post -Uri 'http://localhost:5000/api/chat/send' -Headers (New-AuthHeader $dev) -ContentType 'application/json' -Body $chatBody
    $session = $chat.sessionId
    $thread = $chat.threadId
    Add-Result 'chat-send' 'PASS' ("session=$session;thread=$thread")
  } catch {
    Add-Result 'chat-send' 'FAIL' $_.Exception.Message
  }

  if($thread){
    try {
      $threadResult = Invoke-RestMethod -Method Get -Uri ("http://localhost:5000/api/chat/thread/$thread") -Headers (New-AuthHeader $dev)
      Add-Result 'chat-thread' 'PASS' ("messages=" + $threadResult.messages.Count)
    } catch {
      Add-Result 'chat-thread' 'FAIL' $_.Exception.Message
    }
  }

  if($session){
    try {
      $sessionResult = Invoke-RestMethod -Method Get -Uri ("http://localhost:5000/api/sessions/$session/threads") -Headers (New-AuthHeader $dev)
      Add-Result 'session-threads' 'PASS' ("threads=" + $sessionResult.threadIds.Count)
    } catch {
      Add-Result 'session-threads' 'FAIL' $_.Exception.Message
    }
  }

  try {
    $tools = Invoke-RestMethod -Method Get -Uri 'http://localhost:5000/api/tools' -Headers (New-AuthHeader $dev)
    Add-Result 'tools-list' 'PASS' ("count=" + $tools.Count)
  } catch {
    Add-Result 'tools-list' 'FAIL' $_.Exception.Message
  }

  try {
    $toolLowBody = @{ toolName='time.now'; input=''; environment='lab' } | ConvertTo-Json
    $toolLow = Invoke-RestMethod -Method Post -Uri 'http://localhost:5000/api/tools/test' -Headers (New-AuthHeader $dev) -ContentType 'application/json' -Body $toolLowBody
    Add-Result 'tool-time-now' 'PASS' ("status=" + $toolLow.status)
  } catch {
    Add-Result 'tool-time-now' 'FAIL' $_.Exception.Message
  }

  try {
    $toolRiskBody = @{ toolName='azure.resource.scan'; input='scope=demo'; environment='lab' } | ConvertTo-Json
    $toolRisk = Invoke-RestMethod -Method Post -Uri 'http://localhost:5000/api/tools/test' -Headers (New-AuthHeader $dev) -ContentType 'application/json' -Body $toolRiskBody
    $approval = $toolRisk.approvalRequestId
    Add-Result 'tool-risky' 'PASS' ("status=" + $toolRisk.status + ';approval=' + $approval)
  } catch {
    Add-Result 'tool-risky' 'FAIL' $_.Exception.Message
  }
}

if($apr){
  try {
    $pending = Invoke-RestMethod -Method Get -Uri 'http://localhost:5000/api/approvals/pending' -Headers (New-AuthHeader $apr)
    Add-Result 'approvals-pending' 'PASS' ("count=" + $pending.Count)
  } catch {
    Add-Result 'approvals-pending' 'FAIL' $_.Exception.Message
  }

  if($approval){
    try {
      $approvalBody = @{ approvalRequestId=$approval; action='approve'; comments='approved by automation'; delegateTo=$null } | ConvertTo-Json
      $approvalResult = Invoke-RestMethod -Method Post -Uri 'http://localhost:5000/api/approvals/respond' -Headers (New-AuthHeader $apr) -ContentType 'application/json' -Body $approvalBody
      Add-Result 'approvals-respond' 'PASS' ("status=" + $approvalResult.status)
    } catch {
      Add-Result 'approvals-respond' 'FAIL' $_.Exception.Message
    }
  }
}

if($ana){
  try {
    $audit = Invoke-RestMethod -Method Get -Uri 'http://localhost:5000/api/audit' -Headers (New-AuthHeader $ana)
    Add-Result 'audit-analyst' 'PASS' ("count=" + $audit.Count)
  } catch {
    Add-Result 'audit-analyst' 'FAIL' $_.Exception.Message
  }
}

if($adm){
  try {
    $gov = Invoke-RestMethod -Method Get -Uri 'http://localhost:5000/api/admin/governance' -Headers (New-AuthHeader $adm)
    Add-Result 'governance-admin' 'PASS' ("hitl=" + $gov.hitlMode)
  } catch {
    Add-Result 'governance-admin' 'FAIL' $_.Exception.Message
  }
}

if($view){
  try {
    Invoke-RestMethod -Method Get -Uri 'http://localhost:5000/api/approvals/pending' -Headers (New-AuthHeader $view) | Out-Null
    Add-Result 'viewer-approval-access' 'FAIL' 'viewer unexpectedly accessed approvals'
  } catch {
    Add-Result 'viewer-approval-access' 'PASS' 'access denied as expected'
  }
}

$results | Format-Table -AutoSize
