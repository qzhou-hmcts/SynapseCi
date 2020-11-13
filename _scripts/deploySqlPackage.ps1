


$Command='sqlpackage'
$numOfArgs = $args.Length - 1
for ($i=0; $i -le $numOfArgs; $i++)
{
   $Command="$Command '$($args[$i])'"
}

Write-Host  $Command
$Command | Invoke-Expression
