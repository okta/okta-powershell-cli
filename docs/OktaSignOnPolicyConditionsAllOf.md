# OktaSignOnPolicyConditionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**People** | [**PolicyPeopleCondition**](PolicyPeopleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OktaSignOnPolicyConditionsAllOf = Initialize-Okta.PowerShellOktaSignOnPolicyConditionsAllOf  -People null
```

- Convert the resource to JSON
```powershell
$OktaSignOnPolicyConditionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

