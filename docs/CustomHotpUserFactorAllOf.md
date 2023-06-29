# CustomHotpUserFactorAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FactorProfileId** | **String** |  | [optional] 
**VarProfile** | [**CustomHotpUserFactorProfile**](CustomHotpUserFactorProfile.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomHotpUserFactorAllOf = Initialize-Okta.PowerShellCustomHotpUserFactorAllOf  -FactorProfileId null `
 -VarProfile null
```

- Convert the resource to JSON
```powershell
$CustomHotpUserFactorAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

