. $PSScriptRoot\InitiateTest.ps1

InModuleScope 'IAUtility' {
	Describe 'Invoke-WebSearch' {
		$searchQuery = 'test'
		$expectedSearch = ('https://www.google.com/search?q={0}' -f [Uri]::EscapeDataString($SearchQuery))
		Mock Start-Process {} -ParameterFilter {$FilePath -eq $expectedSearch} -Verifiable
		
		Invoke-WebSearch $searchQuery

		It "Starts the correct search query" {
			Assert-VerifiableMocks
		}
	}
}