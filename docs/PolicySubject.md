# PolicySubject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFilter** | **String** |  | [optional] 
**Format** | **String[]** |  | [optional] 
**MatchAttribute** | **String** |  | [optional] 
**MatchType** | [**PolicySubjectMatchType**](PolicySubjectMatchType.md) |  | [optional] 
**UserNameTemplate** | [**PolicyUserNameTemplate**](PolicyUserNameTemplate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PolicySubject = Initialize-Okta.PowerShellPolicySubject  -VarFilter null `
 -Format null `
 -MatchAttribute null `
 -MatchType null `
 -UserNameTemplate null
```

- Convert the resource to JSON
```powershell
$PolicySubject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

