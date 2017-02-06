function Invoke-WebSearch {
	[CmdletBinding()]
	Param(
		[Parameter(
			Mandatory = $true,
			Position = 1
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
		Write-Host $SearchQuery
		$SearchQuery = [Uri]::EscapeDataString($SearchQuery) #($SearchQuery -replace '''','''''')
		Write-Host $SearchQuery
		#$SearchQuery = ($SearchQuery.Trim() -replace '\s+','') -replace ' ','+'
		switch ($SearchEngine) {
			"Google" {
				$URL = ('https://www.google.com/search?q=' + $SearchQuery)
			}
			"Bing" {
				$URL = ('http://www.bing.com/search?q=' + $SearchQuery)
			}
			Default {
				Write-Error -Message "No Search Engine Specified"
			}
		}
		if ($URL) {
			Start-Process $URL
		}
	}
	End{}
}