# U2fUserFactor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**FactorType** | [**FactorType**](FactorType.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Provider** | [**FactorProvider**](FactorProvider.md) |  | [optional] 
**Status** | [**FactorStatus**](FactorStatus.md) |  | [optional] 
**Verify** | [**VerifyFactorRequest**](VerifyFactorRequest.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**VarProfile** | [**U2fUserFactorProfile**](U2fUserFactorProfile.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$U2fUserFactor = Initialize-Okta.PowerShellU2fUserFactor  -Created null `
 -FactorType null `
 -Id null `
 -LastUpdated null `
 -Provider null `
 -Status null `
 -Verify null `
 -Embedded null `
 -Links null `
 -VarProfile null
```

- Convert the resource to JSON
```powershell
$U2fUserFactor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

