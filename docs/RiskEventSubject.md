# RiskEventSubject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ip** | **String** | Either an IpV4 or IpV6 address. | 
**Message** | **String** | Any additional message that the provider can send specifying the reason for the risk level of the IP. | [optional] 
**RiskLevel** | [**RiskEventSubjectRiskLevel**](RiskEventSubjectRiskLevel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RiskEventSubject = Initialize-Okta.PowerShellRiskEventSubject  -Ip null `
 -Message null `
 -RiskLevel null
```

- Convert the resource to JSON
```powershell
$RiskEventSubject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

