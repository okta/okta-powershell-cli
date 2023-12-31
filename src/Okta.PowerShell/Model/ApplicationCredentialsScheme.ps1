#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum ApplicationCredentialsScheme.

.DESCRIPTION

No description available.
#>

enum ApplicationCredentialsScheme {
    # enum value: "ADMIN_SETS_CREDENTIALS"
    ADMIN_SETS_CREDENTIALS
    # enum value: "EDIT_PASSWORD_ONLY"
    EDIT_PASSWORD_ONLY
    # enum value: "EDIT_USERNAME_AND_PASSWORD"
    EDIT_USERNAME_AND_PASSWORD
    # enum value: "EXTERNAL_PASSWORD_SYNC"
    EXTERNAL_PASSWORD_SYNC
    # enum value: "SHARED_USERNAME_AND_PASSWORD"
    SHARED_USERNAME_AND_PASSWORD
}

