Describe -tag 'Okta.PowerShell' -name 'UrlHelper' {
    Context 'Invoke-ParseUrl' {
        It 'Parse full URL' {
            $Result = Invoke-ParseUrl -Url "https://myorg.oktapreview.com/api/v1/apps?after=foo&limit=2"
            $Result["RelativeUri"] | Should -Be "/api/v1/apps"
            $Result["QueryParameters"]["limit"] | Should -Be 2
            $Result["QueryParameters"]["after"] | Should -Be "foo"
        }

        It 'Parse relative URL should throw' {
            { Invoke-ParseUrl -Url "/api/v1/apps?after=foo&limit=2" } | Should -Throw -ExpectedMessage "Error! The required parameter `Uri` should be an absolute Uri"
        }
    }
}