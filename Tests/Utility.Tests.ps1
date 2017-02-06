# Test variables
$MODULENAME = 'IAUtility'

# Import Module
try{
	Import-Module "$PSScriptRoot\..\$MODULENAME" -Force
} catch {
	Write-Warning ('something went wrong loading {0} module' -f $MODULENAME)
	throw $_
}

Invoke-WebSearch -SearchQuery 'Test'
Invoke-WebSearch -SearchQuery 'Test' -SearchEngine 'Bing'
Invoke-WebSearch -SearchQuery '1|&é@"#''(§^è!ç{à})°-_^¨$*ù%µ£´`[]?,;.:/=+~<>\/*-²³'