# UserSchemaBaseProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**City** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**CostCenter** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**CountryCode** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Department** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**DisplayName** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Division** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Email** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**EmployeeNumber** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**FirstName** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**HonorificPrefix** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**HonorificSuffix** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**LastName** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Locale** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Login** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Manager** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**ManagerId** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**MiddleName** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**MobilePhone** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**NickName** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Organization** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**PostalAddress** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**PreferredLanguage** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**PrimaryPhone** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**ProfileUrl** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**SecondEmail** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**State** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**StreetAddress** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Timezone** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**Title** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**UserType** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 
**ZipCode** | [**UserSchemaAttribute**](UserSchemaAttribute.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSchemaBaseProperties = Initialize-PSOpenAPIToolsUserSchemaBaseProperties  -City null `
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
$UserSchemaBaseProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

