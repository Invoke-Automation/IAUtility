# Test variables
$MODULENAME = 'IAUtility'

# Import Module
try{
	Import-Module "$PSScriptRoot\..\$MODULENAME" -Force
} catch {
	Write-Warning ('something went wrong loading {0} module' -f $MODULENAME)
	throw $_
}