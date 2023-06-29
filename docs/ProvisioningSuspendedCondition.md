# ProvisioningSuspendedCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | [**ProvisioningSuspendedAction**](ProvisioningSuspendedAction.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningSuspendedCondition = Initialize-Okta.PowerShellProvisioningSuspendedCondition  -Action null
```

- Convert the resource to JSON
```powershell
$ProvisioningSuspendedCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

