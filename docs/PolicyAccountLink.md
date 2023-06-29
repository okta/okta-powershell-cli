# PolicyAccountLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | [**PolicyAccountLinkAction**](PolicyAccountLinkAction.md) |  | [optional] 
**VarFilter** | [**PolicyAccountLinkFilter**](PolicyAccountLinkFilter.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PolicyAccountLink = Initialize-Okta.PowerShellPolicyAccountLink  -Action null `
 -VarFilter null
```

- Convert the resource to JSON
```powershell
$PolicyAccountLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

