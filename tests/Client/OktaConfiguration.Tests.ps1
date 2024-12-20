Describe "Set-OktaConfiguration" {
    Context "when setting MaxRetries" {
        It "should set the MaxRetries in the configuration" {
            $MaxRetriesTestCases = @(1, 5, 10)
            foreach ($MaxRetries in $MaxRetriesTestCases) {
                Set-OktaConfiguration -MaxRetries $MaxRetries
            
                $Configuration = Get-OktaConfiguration
                $Configuration["MaxRetries"] | Should -Be $MaxRetries
            }
        }
    }

    Context "when setting RequestTimeout" {
        It "should set the RequestTimeout in the configuration" {
            $RequestTimeoutTestCases =  @(0, 5000, 10000)
            foreach ($RequestTimeout in $RequestTimeoutTestCases) {
                Set-OktaConfiguration -RequestTimeout $RequestTimeout

                $Configuration = Get-OktaConfiguration
                $Configuration["RequestTimeout"] | Should -Be $RequestTimeout
            }
        }
    }
}
