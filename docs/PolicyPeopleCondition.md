# PolicyPeopleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | [**GroupCondition**](GroupCondition.md) |  | [optional] 
**Users** | [**UserCondition**](UserCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PolicyPeopleCondition = Initialize-Okta.PowerShellPolicyPeopleCondition  -Groups null `
 -Users null
```

- Convert the resource to JSON
```powershell
$PolicyPeopleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

