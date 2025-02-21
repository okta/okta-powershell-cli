# Changelog

Running changelog of releases since `1.0.0`

## 2.0.0

Starting with the 2.x series, the Okta.PowerShell module supports PowerShell 7+.

### New Features

- Added support to revoke tokens (#67)
- Exposed a new exception called `OktaApiException` for API errors (#78)
- Updated readme with new samples such as "Create custom objects", "configure a web proxy", "List resources that match a filter criteria", "Get logs" and "Error handling".

### Bug fixes

- Fixed "Parameter existence checking in functions treats $false value as no parameter" (#56)
- Fixed "Rate limit functionality doesn't work" (#61)(#70)
- Fixed "Get-OktaLogs changes the required date format for "since" and "until" query params" (#55)
- Improved testability (#74)  

## 1.0.0

- We're excited to release the first generally available version of the Okta.PowerShell module. Please, check out the [README](./README.md) file to learn more about its capabilities.
