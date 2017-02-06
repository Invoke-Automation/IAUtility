function Invoke-WebSearch {
	[CmdletBinding()]
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
				Write-Error -Message "No Search Engine Specified"
			}
		}
		if ($URL) {
			Start-Process $URL
		}
	}
	End{}
}