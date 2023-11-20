Describe -tag 'Okta.PowerShell' -name 'UrlHelper' {
    Context 'Invoke-ParseAbsoluteUri' {
        It 'Parse absolute URI' {
            $Result = Invoke-ParseAbsoluteUri -Uri "https://myorg.oktapreview.com/api/v1/apps?after=foo&limit=2"
            $Result["RelativeUri"] | Should -Be "/api/v1/apps"
            $Result["QueryParameters"]["limit"] | Should -Be 2
            $Result["QueryParameters"]["after"] | Should -Be "foo"
        }

        It 'Parse relative URI should throw' {
            { Invoke-ParseAbsoluteUri -Uri "/api/v1/apps?after=foo&limit=2" } | Should -Throw -ExpectedMessage "Error! The required parameter `Uri` should be an absolute Uri"
        }
    }
}