# ResourceSetBindingResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | &#x60;id&#x60; of the role | [optional] 
**Links** | [**ResourceSetBindingResponseLinks**](ResourceSetBindingResponseLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingResponse = Initialize-Okta.PowerShellResourceSetBindingResponse  -Id null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

