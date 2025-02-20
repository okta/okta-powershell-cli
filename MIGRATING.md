# Okta.PowerShell module migration guide

This module uses semantic versioning and follows Okta's [library version policy](https://developer.okta.com/code/library-versions/). In short, we don't make breaking changes unless the major version changes!

## Migrating from 1.x to 2.x

* We removed the `Invoke-OktaRemoveAccessToken` command and replaced it by `Invoke-OktaRevokeAccessToken` which revokes your access token and remove it from your configuration object. You can execute the following command to [revoke your token](https://developer.okta.com/docs/guides/revoke-tokens):

```powershell
Invoke-OktaRevokeAccessToken
```

* We added a new exception called `OktaApiException` which is thrown when the Okta API returns 4xx/5xx responses. You can catch an `OktaApiException` and access the Okta API error details. For example, if the API returns a 429 response with the following content: `{"errorCode":"E0000047","errorSummary":"API call exceeded rate limit due to too many requests.","errorLink":"E0000047","errorId":"oae6dB62BdhRFCF_9ltxiklFQ","errorCauses":[]}`, you can access these details from the exception:

```powershell
    try{
        $Result = Invoke-OktaListApplications
    }
    catch{
        $_.Exception.StatusCode.Value__ | Should -Be 429;
        $_.Exception.ErrorCode | Should -Be "E0000047"
        $_.Exception.ErrorSummary | Should -Be "API call exceeded rate limit due to too many requests."
        $_.Exception.ErrorLink | Should -Be "E0000047"
        $_.Exception.ErrorId | Should -Be "oae6dB62BdhRFCF_9ltxiklFQ"
        $_.Exception.ErrorCauses | Should -BeNullOrEmpty
        $_.Exception.Headers | Should -Not -Be $null
    }
```

* We updated the OpenAPI spec for the System Log API, and the query parameters `since` and `until` changed their type from `System.Nullable[System.DateTime]` to `String`. Since the System Log API requires `since` and `until` query parameters to be ISO 8601 compliant timestamp, make sure to format dates accordingly:

```powershell
$since = (Get-Date).AddMonths(-6).ToString("yyyy-MM-ddTHH:mm:ssZ")
$until = (Get-Date).ToString("yyyy-MM-ddTHH:mm:ssZ")
Get-OktaLogs -since $since -until $until

```

* We fixed the rate limit functionality which wasn't working as expected. Check out the [PR #78](https://github.com/okta/okta-powershell-cli/pull/78) for more details.