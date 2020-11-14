param
(
    [parameter(Mandatory = $false)] [String] $action,
    [parameter(Mandatory = $false)] [String] $tsn,
    [parameter(Mandatory = $false)] [String] $tdn,
    [parameter(Mandatory = $false)] [String] $tu,
    [parameter(Mandatory = $false)] [String] $tp,
    [parameter(Mandatory = $false)] [String] $sf,
    [parameter(Mandatory = $false)] [String] $extra
)

$Command='sqlpackage'

$Command="$Command /a:$action /tsn:$tsn /tdn:$tdn /tu:$tu /tp:'$tp' /sf:$sf $extra"

Write-Host $Command
$Command | Invoke-Expression
