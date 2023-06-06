# SamlApplicationSettingsSignOn
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AcsEndpoints** | [**AcsEndpoint[]**](AcsEndpoint.md) |  | [optional] 
**AllowMultipleAcsEndpoints** | **Boolean** |  | [optional] 
**AssertionSigned** | **Boolean** |  | [optional] 
**AttributeStatements** | [**SamlAttributeStatement[]**](SamlAttributeStatement.md) |  | [optional] 
**Audience** | **String** |  | [optional] 
**AudienceOverride** | **String** |  | [optional] 
**AuthnContextClassRef** | **String** |  | [optional] 
**DefaultRelayState** | **String** |  | [optional] 
**Destination** | **String** |  | [optional] 
**DestinationOverride** | **String** |  | [optional] 
**DigestAlgorithm** | **String** |  | [optional] 
**HonorForceAuthn** | **Boolean** |  | [optional] 
**IdpIssuer** | **String** |  | [optional] 
**InlineHooks** | [**SignOnInlineHook[]**](SignOnInlineHook.md) |  | [optional] 
**Recipient** | **String** |  | [optional] 
**RecipientOverride** | **String** |  | [optional] 
**RequestCompressed** | **Boolean** |  | [optional] 
**ResponseSigned** | **Boolean** |  | [optional] 
**SignatureAlgorithm** | **String** |  | [optional] 
**Slo** | [**SingleLogout**](SingleLogout.md) |  | [optional] 
**SpCertificate** | [**SpCertificate**](SpCertificate.md) |  | [optional] 
**SpIssuer** | **String** |  | [optional] 
**SsoAcsUrl** | **String** |  | [optional] 
**SsoAcsUrlOverride** | **String** |  | [optional] 
**SubjectNameIdFormat** | **String** |  | [optional] 
**SubjectNameIdTemplate** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SamlApplicationSettingsSignOn = Initialize-PSOpenAPIToolsSamlApplicationSettingsSignOn  -AcsEndpoints null `
 -AllowMultipleAcsEndpoints null `
 -AssertionSigned null `
 -AttributeStatements null `
 -Audience null `
 -AudienceOverride null `
 -AuthnContextClassRef null `
 -DefaultRelayState null `
 -Destination null `
 -DestinationOverride null `
 -DigestAlgorithm null `
 -HonorForceAuthn null `
 -IdpIssuer null `
 -InlineHooks null `
 -Recipient null `
 -RecipientOverride null `
 -RequestCompressed null `
 -ResponseSigned null `
 -SignatureAlgorithm null `
 -Slo null `
 -SpCertificate null `
 -SpIssuer null `
 -SsoAcsUrl null `
 -SsoAcsUrlOverride null `
 -SubjectNameIdFormat null `
 -SubjectNameIdTemplate null
```

- Convert the resource to JSON
```powershell
$SamlApplicationSettingsSignOn | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

