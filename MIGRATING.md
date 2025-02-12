# Okta.PowerShell module migration guide

This module uses semantic versioning and follows Okta's [library version policy](https://developer.okta.com/code/library-versions/). In short, we don't make breaking changes unless the major version changes!

## Migrating from 1.x to 2.x

* We removed the `Invoke-OktaRemoveAccessToken` and replaced it by `Invoke-OktaRevokeAccessToken` which will revoke your access token and remove it from your configuration object.