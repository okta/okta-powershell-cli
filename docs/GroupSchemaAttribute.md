# GroupSchemaAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Enum** | **String[]** |  | [optional] 
**ExternalName** | **String** |  | [optional] 
**ExternalNamespace** | **String** |  | [optional] 
**Items** | [**UserSchemaAttributeItems**](UserSchemaAttributeItems.md) |  | [optional] 
**Master** | [**UserSchemaAttributeMaster**](UserSchemaAttributeMaster.md) |  | [optional] 
**MaxLength** | **Int32** |  | [optional] 
**MinLength** | **Int32** |  | [optional] 
**Mutability** | **String** |  | [optional] 
**OneOf** | [**UserSchemaAttributeEnum[]**](UserSchemaAttributeEnum.md) |  | [optional] 
**Permissions** | [**UserSchemaAttributePermission[]**](UserSchemaAttributePermission.md) |  | [optional] 
**Required** | **Boolean** |  | [optional] 
**Scope** | [**UserSchemaAttributeScope**](UserSchemaAttributeScope.md) |  | [optional] 
**Title** | **String** |  | [optional] 
**Type** | [**UserSchemaAttributeType**](UserSchemaAttributeType.md) |  | [optional] 
**Union** | [**UserSchemaAttributeUnion**](UserSchemaAttributeUnion.md) |  | [optional] 
**Unique** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupSchemaAttribute = Initialize-Okta.PowerShellGroupSchemaAttribute  -Description null `
 -Enum null `
 -ExternalName null `
 -ExternalNamespace null `
 -Items null `
 -Master null `
 -MaxLength null `
 -MinLength null `
 -Mutability null `
 -OneOf null `
 -Permissions null `
 -Required null `
 -Scope null `
 -Title null `
 -Type null `
 -Union null `
 -Unique null
```

- Convert the resource to JSON
```powershell
$GroupSchemaAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

