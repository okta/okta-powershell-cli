# UserProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**City** | **String** |  | [optional] 
**CostCenter** | **String** |  | [optional] 
**CountryCode** | **String** |  | [optional] 
**Department** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Division** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**EmployeeNumber** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**HonorificPrefix** | **String** |  | [optional] 
**HonorificSuffix** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Locale** | **String** | The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646). | [optional] 
**Login** | **String** |  | [optional] 
**Manager** | **String** |  | [optional] 
**ManagerId** | **String** |  | [optional] 
**MiddleName** | **String** |  | [optional] 
**MobilePhone** | **String** |  | [optional] 
**NickName** | **String** |  | [optional] 
**Organization** | **String** |  | [optional] 
**PostalAddress** | **String** |  | [optional] 
**PreferredLanguage** | **String** |  | [optional] 
**PrimaryPhone** | **String** |  | [optional] 
**ProfileUrl** | **String** |  | [optional] 
**SecondEmail** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**StreetAddress** | **String** |  | [optional] 
**Timezone** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**UserType** | **String** |  | [optional] 
**ZipCode** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserProfile = Initialize-Okta.PowerShellUserProfile  -City null `
 -CostCenter null `
 -CountryCode null `
 -Department null `
 -DisplayName null `
 -Division null `
 -Email null `
 -EmployeeNumber null `
 -FirstName null `
 -HonorificPrefix null `
 -HonorificSuffix null `
 -LastName null `
 -Locale null `
 -Login null `
 -Manager null `
 -ManagerId null `
 -MiddleName null `
 -MobilePhone null `
 -NickName null `
 -Organization null `
 -PostalAddress null `
 -PreferredLanguage null `
 -PrimaryPhone null `
 -ProfileUrl null `
 -SecondEmail null `
 -State null `
 -StreetAddress null `
 -Timezone null `
 -Title null `
 -UserType null `
 -ZipCode null
```

- Convert the resource to JSON
```powershell
$UserProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

