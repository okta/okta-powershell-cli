# PushUserFactorAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpiresAt** | **System.DateTime** |  | [optional] 
**FactorResult** | [**FactorResultType**](FactorResultType.md) |  | [optional] 
**VarProfile** | [**PushUserFactorProfile**](PushUserFactorProfile.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PushUserFactorAllOf = Initialize-Okta.PowerShellPushUserFactorAllOf  -ExpiresAt null `
 -FactorResult null `
 -VarProfile null
```

- Convert the resource to JSON
```powershell
$PushUserFactorAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

