function Invoke-WebSearch {
	<#
		.SYNOPSIS
			Do a quick search online
		.DESCRIPTION
			Search anything using online search engine (Default: Google)
		.PARAMETER SearchQuery
			Search Querry to be searched for
		.PARAMETER SearchEngine
			Name of Search Engine to be used
		.EXAMPLE
			PS C:\> Invoke-WebSearch 'Invoke-Automation'
			Search Google for "Invoke-Automation"
		.INPUTS
			System.String
			The search query
		.OUTPUTS
			None
			Opens your default webbrowser with the search query
		.NOTES
			General notes
	#>
	[CmdletBinding()]
	[Alias('Google')]
	Param(
		[Parameter(
			Mandatory = $true,
			Position = 1,
			ValueFromPipeline = $true
		)]
		[String]$SearchQuery,
		[Parameter(
			Mandatory = $false,
			Position = 2
		)]
		[String]$SearchEngine = 'Google'
	)
	Begin{}
	Process {
		$SearchQuery = [Uri]::EscapeDataString($SearchQuery)
		switch ($SearchEngine) {
			"Google" {
				$URL = ('https://www.google.com/search?q=' + $SearchQuery)
			}
			"Bing" {
				$URL = ('http://www.bing.com/search?q=' + $SearchQuery)
			}
			Default {
				throw "Unknown Search Engine Specified"
			}
		}
		if ($URL) {
			Start-Process -FilePath $URL
		}
	}
	End{}
}