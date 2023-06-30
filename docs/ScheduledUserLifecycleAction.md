# ScheduledUserLifecycleAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**PolicyUserStatus**](PolicyUserStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduledUserLifecycleAction = Initialize-Okta.PowerShellScheduledUserLifecycleAction  -Status null
```

- Convert the resource to JSON
```powershell
$ScheduledUserLifecycleAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

