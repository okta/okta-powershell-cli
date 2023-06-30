# UserIdentifierConditionEvaluatorPattern
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchType** | [**UserIdentifierMatchType**](UserIdentifierMatchType.md) |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserIdentifierConditionEvaluatorPattern = Initialize-Okta.PowerShellUserIdentifierConditionEvaluatorPattern  -MatchType null `
 -Value null
```

- Convert the resource to JSON
```powershell
$UserIdentifierConditionEvaluatorPattern | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

