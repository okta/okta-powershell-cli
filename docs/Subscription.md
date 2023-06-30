# Subscription
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channels** | **String[]** |  | [optional] 
**NotificationType** | [**NotificationType**](NotificationType.md) |  | [optional] 
**Status** | [**SubscriptionStatus**](SubscriptionStatus.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Subscription = Initialize-Okta.PowerShellSubscription  -Channels null `
 -NotificationType null `
 -Status null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Subscription | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

