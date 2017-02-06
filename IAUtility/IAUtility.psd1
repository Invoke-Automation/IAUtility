@{
	ModuleToProcess = 'IAUtility.psm1'
	ModuleVersion = '0.1.0'
	GUID = '2ef38064-6c1d-4939-8b2b-2e24a6db8332'
	Author = 'Tomas Deceuninck'
	Copyright = '(c) 2014-17 Tomas Deceuninck. All rights reserved.'
	Description = 'Invoke-Automation Utility module is a collection of several usefull PowerShell cmdlets.'
	PowerShellVersion = '3.0'

	FunctionsToExport = '*'
	CmdletsToExport = '*'
	VariablesToExport = '*'
	AliasesToExport = '*'

	PrivateData = @{
		PSData = @{
			Tags = @('Invoke-Automation','Utility')
			#LicenseUri = ''
			#ProjectUri = ''
			#IconUri = ''
			#ReleaseNotes = ''
		}
	}
}