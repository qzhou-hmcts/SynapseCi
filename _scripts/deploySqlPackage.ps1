


$Command='/Users/qzhou/test/sqlpackage-osx-x64/sqlpackage'
$numOfArgs = $args.Length - 1
for ($i=0; $i -le $numOfArgs; $i++)
{
   $Command="$Command '$($args[$i])'"
}

Write-Host  "============================"

Write-Host  $Command
$Command | Invoke-Expression
