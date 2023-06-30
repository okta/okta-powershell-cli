# OAuth2Claim
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlwaysIncludeInToken** | **Boolean** |  | [optional] 
**ClaimType** | [**OAuth2ClaimType**](OAuth2ClaimType.md) |  | [optional] 
**Conditions** | [**OAuth2ClaimConditions**](OAuth2ClaimConditions.md) |  | [optional] 
**GroupFilterType** | [**OAuth2ClaimGroupFilterType**](OAuth2ClaimGroupFilterType.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**System** | **Boolean** |  | [optional] 
**Value** | **String** |  | [optional] 
**ValueType** | [**OAuth2ClaimValueType**](OAuth2ClaimValueType.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$OAuth2Claim = Initialize-Okta.PowerShellOAuth2Claim  -AlwaysIncludeInToken null `
 -ClaimType null `
 -Conditions null `
 -GroupFilterType null `
 -Id null `
 -Name null `
 -Status null `
 -System null `
 -Value null `
 -ValueType null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OAuth2Claim | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

