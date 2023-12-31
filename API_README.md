# Documentation for API Endpoints

All URIs are relative to *https://subdomain.okta.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OktaAgentPoolsApi* | [**Invoke-OktaActivateAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Invoke-OktaActivateAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/activate | Activate an Agent Pool update
*OktaAgentPoolsApi* | [**New-OktaAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#New-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates | Create an Agent Pool update
*OktaAgentPoolsApi* | [**Invoke-OktaDeactivateAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Invoke-OktaDeactivateAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/deactivate | Deactivate an Agent Pool update
*OktaAgentPoolsApi* | [**Invoke-OktaDeleteAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Invoke-OktaDeleteAgentPoolsUpdate) | **DELETE** /api/v1/agentPools/{poolId}/updates/{updateId} | Delete an Agent Pool update
*OktaAgentPoolsApi* | [**Get-OktaAgentPools**](docs/OktaAgentPoolsApi.md#Get-OktaAgentPools) | **GET** /api/v1/agentPools | List all Agent Pools
*OktaAgentPoolsApi* | [**Get-OktaAgentPoolsUpdateInstance**](docs/OktaAgentPoolsApi.md#Get-OktaAgentPoolsUpdateInstance) | **GET** /api/v1/agentPools/{poolId}/updates/{updateId} | Retrieve an Agent Pool update by id
*OktaAgentPoolsApi* | [**Get-OktaAgentPoolsUpdateSettings**](docs/OktaAgentPoolsApi.md#Get-OktaAgentPoolsUpdateSettings) | **GET** /api/v1/agentPools/{poolId}/updates/settings | Retrieve an Agent Pool update's settings
*OktaAgentPoolsApi* | [**Get-OktaAgentPoolsUpdates**](docs/OktaAgentPoolsApi.md#Get-OktaAgentPoolsUpdates) | **GET** /api/v1/agentPools/{poolId}/updates | List all Agent Pool updates
*OktaAgentPoolsApi* | [**Suspend-OktaAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Suspend-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/pause | Pause an Agent Pool update
*OktaAgentPoolsApi* | [**Resume-OktaAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Resume-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/resume | Resume an Agent Pool update
*OktaAgentPoolsApi* | [**Invoke-OktaRetryAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Invoke-OktaRetryAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/retry | Retry an Agent Pool update
*OktaAgentPoolsApi* | [**Set-OktaAgentPoolsUpdateSettings**](docs/OktaAgentPoolsApi.md#Set-OktaAgentPoolsUpdateSettings) | **POST** /api/v1/agentPools/{poolId}/updates/settings | Update an Agent Pool update settings
*OktaAgentPoolsApi* | [**Stop-OktaAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Stop-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/stop | Stop an Agent Pool update
*OktaAgentPoolsApi* | [**Update-OktaAgentPoolsUpdate**](docs/OktaAgentPoolsApi.md#Update-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId} | Update an Agent Pool update by id
*OktaApiTokenApi* | [**Get-OktaApiToken**](docs/OktaApiTokenApi.md#Get-OktaApiToken) | **GET** /api/v1/api-tokens/{apiTokenId} | Retrieve an API Token's Metadata
*OktaApiTokenApi* | [**Invoke-OktaListApiTokens**](docs/OktaApiTokenApi.md#Invoke-OktaListApiTokens) | **GET** /api/v1/api-tokens | List all API Token Metadata
*OktaApiTokenApi* | [**Revoke-OktaApiToken**](docs/OktaApiTokenApi.md#Revoke-OktaApiToken) | **DELETE** /api/v1/api-tokens/{apiTokenId} | Revoke an API Token
*OktaApiTokenApi* | [**Revoke-OktaCurrentApiToken**](docs/OktaApiTokenApi.md#Revoke-OktaCurrentApiToken) | **DELETE** /api/v1/api-tokens/current | Revoke the Current API Token
*OktaApplicationApi* | [**Invoke-OktaActivateApplication**](docs/OktaApplicationApi.md#Invoke-OktaActivateApplication) | **POST** /api/v1/apps/{appId}/lifecycle/activate | Activate an Application
*OktaApplicationApi* | [**Invoke-OktaActivateDefaultProvisioningConnectionForApplication**](docs/OktaApplicationApi.md#Invoke-OktaActivateDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default/lifecycle/activate | Activate the default Provisioning Connection
*OktaApplicationApi* | [**Set-OktaApplicationPolicy**](docs/OktaApplicationApi.md#Set-OktaApplicationPolicy) | **PUT** /api/v1/apps/{appId}/policies/{policyId} | Assign an application to a specific policy
*OktaApplicationApi* | [**Set-OktaUserToApplication**](docs/OktaApplicationApi.md#Set-OktaUserToApplication) | **POST** /api/v1/apps/{appId}/users | Assign a User
*OktaApplicationApi* | [**Copy-OktaApplicationKey**](docs/OktaApplicationApi.md#Copy-OktaApplicationKey) | **POST** /api/v1/apps/{appId}/credentials/keys/{keyId}/clone | Clone a Key Credential
*OktaApplicationApi* | [**New-OktaApplication**](docs/OktaApplicationApi.md#New-OktaApplication) | **POST** /api/v1/apps | Create an Application
*OktaApplicationApi* | [**New-OktaApplicationGroupAssignment**](docs/OktaApplicationApi.md#New-OktaApplicationGroupAssignment) | **PUT** /api/v1/apps/{appId}/groups/{groupId} | Assign a Group
*OktaApplicationApi* | [**Invoke-OktaDeactivateApplication**](docs/OktaApplicationApi.md#Invoke-OktaDeactivateApplication) | **POST** /api/v1/apps/{appId}/lifecycle/deactivate | Deactivate an Application
*OktaApplicationApi* | [**Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication**](docs/OktaApplicationApi.md#Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default/lifecycle/deactivate | Deactivate the default Provisioning Connection for an Application
*OktaApplicationApi* | [**Invoke-OktaDeleteApplication**](docs/OktaApplicationApi.md#Invoke-OktaDeleteApplication) | **DELETE** /api/v1/apps/{appId} | Delete an Application
*OktaApplicationApi* | [**Invoke-OktaDeleteApplicationGroupAssignment**](docs/OktaApplicationApi.md#Invoke-OktaDeleteApplicationGroupAssignment) | **DELETE** /api/v1/apps/{appId}/groups/{groupId} | Unassign a Group
*OktaApplicationApi* | [**Invoke-OktaDeleteApplicationUser**](docs/OktaApplicationApi.md#Invoke-OktaDeleteApplicationUser) | **DELETE** /api/v1/apps/{appId}/users/{userId} | Unassign a User
*OktaApplicationApi* | [**New-OktaApplicationKey**](docs/OktaApplicationApi.md#New-OktaApplicationKey) | **POST** /api/v1/apps/{appId}/credentials/keys/generate | Generate a Key Credential
*OktaApplicationApi* | [**New-OktaCsrForApplication**](docs/OktaApplicationApi.md#New-OktaCsrForApplication) | **POST** /api/v1/apps/{appId}/credentials/csrs | Generate a Certificate Signing Request
*OktaApplicationApi* | [**Get-OktaApplication**](docs/OktaApplicationApi.md#Get-OktaApplication) | **GET** /api/v1/apps/{appId} | Retrieve an Application
*OktaApplicationApi* | [**Get-OktaApplicationGroupAssignment**](docs/OktaApplicationApi.md#Get-OktaApplicationGroupAssignment) | **GET** /api/v1/apps/{appId}/groups/{groupId} | Retrieve an Assigned Group
*OktaApplicationApi* | [**Get-OktaApplicationKey**](docs/OktaApplicationApi.md#Get-OktaApplicationKey) | **GET** /api/v1/apps/{appId}/credentials/keys/{keyId} | Retrieve a Key Credential
*OktaApplicationApi* | [**Get-OktaApplicationUser**](docs/OktaApplicationApi.md#Get-OktaApplicationUser) | **GET** /api/v1/apps/{appId}/users/{userId} | Retrieve an Assigned User
*OktaApplicationApi* | [**Get-OktaCsrForApplication**](docs/OktaApplicationApi.md#Get-OktaCsrForApplication) | **GET** /api/v1/apps/{appId}/credentials/csrs/{csrId} | Retrieve a Certificate Signing Request
*OktaApplicationApi* | [**Get-OktaDefaultProvisioningConnectionForApplication**](docs/OktaApplicationApi.md#Get-OktaDefaultProvisioningConnectionForApplication) | **GET** /api/v1/apps/{appId}/connections/default | Retrieve the default Provisioning Connection
*OktaApplicationApi* | [**Get-OktaFeatureForApplication**](docs/OktaApplicationApi.md#Get-OktaFeatureForApplication) | **GET** /api/v1/apps/{appId}/features/{name} | Retrieve a Feature
*OktaApplicationApi* | [**Get-OktaOAuth2TokenForApplication**](docs/OktaApplicationApi.md#Get-OktaOAuth2TokenForApplication) | **GET** /api/v1/apps/{appId}/tokens/{tokenId} | Retrieve an OAuth 2.0 Token
*OktaApplicationApi* | [**Get-OktaScopeConsentGrant**](docs/OktaApplicationApi.md#Get-OktaScopeConsentGrant) | **GET** /api/v1/apps/{appId}/grants/{grantId} | Retrieve a Scope Consent Grant
*OktaApplicationApi* | [**Grant-OktaConsentToScope**](docs/OktaApplicationApi.md#Grant-OktaConsentToScope) | **POST** /api/v1/apps/{appId}/grants | Grant Consent to Scope
*OktaApplicationApi* | [**Invoke-OktaListApplicationGroupAssignments**](docs/OktaApplicationApi.md#Invoke-OktaListApplicationGroupAssignments) | **GET** /api/v1/apps/{appId}/groups | List all Assigned Groups
*OktaApplicationApi* | [**Invoke-OktaListApplicationKeys**](docs/OktaApplicationApi.md#Invoke-OktaListApplicationKeys) | **GET** /api/v1/apps/{appId}/credentials/keys | List all Key Credentials
*OktaApplicationApi* | [**Invoke-OktaListApplicationUsers**](docs/OktaApplicationApi.md#Invoke-OktaListApplicationUsers) | **GET** /api/v1/apps/{appId}/users | List all Assigned Users
*OktaApplicationApi* | [**Invoke-OktaListApplications**](docs/OktaApplicationApi.md#Invoke-OktaListApplications) | **GET** /api/v1/apps | List all Applications
*OktaApplicationApi* | [**Invoke-OktaListCsrsForApplication**](docs/OktaApplicationApi.md#Invoke-OktaListCsrsForApplication) | **GET** /api/v1/apps/{appId}/credentials/csrs | List all Certificate Signing Requests
*OktaApplicationApi* | [**Invoke-OktaListFeaturesForApplication**](docs/OktaApplicationApi.md#Invoke-OktaListFeaturesForApplication) | **GET** /api/v1/apps/{appId}/features | List all Features
*OktaApplicationApi* | [**Invoke-OktaListOAuth2TokensForApplication**](docs/OktaApplicationApi.md#Invoke-OktaListOAuth2TokensForApplication) | **GET** /api/v1/apps/{appId}/tokens | List all OAuth 2.0 Tokens
*OktaApplicationApi* | [**Invoke-OktaListScopeConsentGrants**](docs/OktaApplicationApi.md#Invoke-OktaListScopeConsentGrants) | **GET** /api/v1/apps/{appId}/grants | List all Scope Consent Grants
*OktaApplicationApi* | [**Publish-OktaCsrFromApplication**](docs/OktaApplicationApi.md#Publish-OktaCsrFromApplication) | **POST** /api/v1/apps/{appId}/credentials/csrs/{csrId}/lifecycle/publish | Publish a Certificate Signing Request
*OktaApplicationApi* | [**Revoke-OktaCsrFromApplication**](docs/OktaApplicationApi.md#Revoke-OktaCsrFromApplication) | **DELETE** /api/v1/apps/{appId}/credentials/csrs/{csrId} | Revoke a Certificate Signing Request
*OktaApplicationApi* | [**Revoke-OktaOAuth2TokenForApplication**](docs/OktaApplicationApi.md#Revoke-OktaOAuth2TokenForApplication) | **DELETE** /api/v1/apps/{appId}/tokens/{tokenId} | Revoke an OAuth 2.0 Token
*OktaApplicationApi* | [**Revoke-OktaOAuth2TokensForApplication**](docs/OktaApplicationApi.md#Revoke-OktaOAuth2TokensForApplication) | **DELETE** /api/v1/apps/{appId}/tokens | Revoke all OAuth 2.0 Tokens
*OktaApplicationApi* | [**Revoke-OktaScopeConsentGrant**](docs/OktaApplicationApi.md#Revoke-OktaScopeConsentGrant) | **DELETE** /api/v1/apps/{appId}/grants/{grantId} | Revoke a Scope Consent Grant
*OktaApplicationApi* | [**Set-OktaDefaultProvisioningConnectionForApplication**](docs/OktaApplicationApi.md#Set-OktaDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default | Update the default Provisioning Connection
*OktaApplicationApi* | [**Update-OktaApplication**](docs/OktaApplicationApi.md#Update-OktaApplication) | **PUT** /api/v1/apps/{appId} | Replace an Application
*OktaApplicationApi* | [**Update-OktaApplicationUser**](docs/OktaApplicationApi.md#Update-OktaApplicationUser) | **POST** /api/v1/apps/{appId}/users/{userId} | Update an Application Profile for Assigned User
*OktaApplicationApi* | [**Update-OktaFeatureForApplication**](docs/OktaApplicationApi.md#Update-OktaFeatureForApplication) | **PUT** /api/v1/apps/{appId}/features/{name} | Update a Feature
*OktaApplicationApi* | [**Invoke-OktaUploadApplicationLogo**](docs/OktaApplicationApi.md#Invoke-OktaUploadApplicationLogo) | **POST** /api/v1/apps/{appId}/logo | Upload a Logo
*OktaAuthenticatorApi* | [**Invoke-OktaActivateAuthenticator**](docs/OktaAuthenticatorApi.md#Invoke-OktaActivateAuthenticator) | **POST** /api/v1/authenticators/{authenticatorId}/lifecycle/activate | Activate an Authenticator
*OktaAuthenticatorApi* | [**New-OktaAuthenticator**](docs/OktaAuthenticatorApi.md#New-OktaAuthenticator) | **POST** /api/v1/authenticators | Create an Authenticator
*OktaAuthenticatorApi* | [**Invoke-OktaDeactivateAuthenticator**](docs/OktaAuthenticatorApi.md#Invoke-OktaDeactivateAuthenticator) | **POST** /api/v1/authenticators/{authenticatorId}/lifecycle/deactivate | Deactivate an Authenticator
*OktaAuthenticatorApi* | [**Get-OktaAuthenticator**](docs/OktaAuthenticatorApi.md#Get-OktaAuthenticator) | **GET** /api/v1/authenticators/{authenticatorId} | Retrieve an Authenticator
*OktaAuthenticatorApi* | [**Invoke-OktaListAuthenticators**](docs/OktaAuthenticatorApi.md#Invoke-OktaListAuthenticators) | **GET** /api/v1/authenticators | List all Authenticators
*OktaAuthenticatorApi* | [**Update-OktaAuthenticator**](docs/OktaAuthenticatorApi.md#Update-OktaAuthenticator) | **PUT** /api/v1/authenticators/{authenticatorId} | Replace an Authenticator
*OktaAuthorizationServerApi* | [**Invoke-OktaActivateAuthorizationServer**](docs/OktaAuthorizationServerApi.md#Invoke-OktaActivateAuthorizationServer) | **POST** /api/v1/authorizationServers/{authServerId}/lifecycle/activate | Activate an Authorization Server
*OktaAuthorizationServerApi* | [**Invoke-OktaActivateAuthorizationServerPolicy**](docs/OktaAuthorizationServerApi.md#Invoke-OktaActivateAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/activate | Activate a Policy
*OktaAuthorizationServerApi* | [**Invoke-OktaActivateAuthorizationServerPolicyRule**](docs/OktaAuthorizationServerApi.md#Invoke-OktaActivateAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/activate | Activate a Policy Rule
*OktaAuthorizationServerApi* | [**New-OktaAuthorizationServer**](docs/OktaAuthorizationServerApi.md#New-OktaAuthorizationServer) | **POST** /api/v1/authorizationServers | Create an Authorization Server
*OktaAuthorizationServerApi* | [**New-OktaAuthorizationServerPolicy**](docs/OktaAuthorizationServerApi.md#New-OktaAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies | Create a Policy
*OktaAuthorizationServerApi* | [**New-OktaAuthorizationServerPolicyRule**](docs/OktaAuthorizationServerApi.md#New-OktaAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules | Create a Policy Rule
*OktaAuthorizationServerApi* | [**New-OktaOAuth2Claim**](docs/OktaAuthorizationServerApi.md#New-OktaOAuth2Claim) | **POST** /api/v1/authorizationServers/{authServerId}/claims | Create a Custom Token Claim
*OktaAuthorizationServerApi* | [**New-OktaOAuth2Scope**](docs/OktaAuthorizationServerApi.md#New-OktaOAuth2Scope) | **POST** /api/v1/authorizationServers/{authServerId}/scopes | Create a Custom Token Scope
*OktaAuthorizationServerApi* | [**Invoke-OktaDeactivateAuthorizationServer**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeactivateAuthorizationServer) | **POST** /api/v1/authorizationServers/{authServerId}/lifecycle/deactivate | Deactivate an Authorization Server
*OktaAuthorizationServerApi* | [**Invoke-OktaDeactivateAuthorizationServerPolicy**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeactivateAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/deactivate | Deactivate a Policy
*OktaAuthorizationServerApi* | [**Invoke-OktaDeactivateAuthorizationServerPolicyRule**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeactivateAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate | Deactivate a Policy Rule
*OktaAuthorizationServerApi* | [**Invoke-OktaDeleteAuthorizationServer**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeleteAuthorizationServer) | **DELETE** /api/v1/authorizationServers/{authServerId} | Delete an Authorization Server
*OktaAuthorizationServerApi* | [**Invoke-OktaDeleteAuthorizationServerPolicy**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeleteAuthorizationServerPolicy) | **DELETE** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Delete a Policy
*OktaAuthorizationServerApi* | [**Invoke-OktaDeleteAuthorizationServerPolicyRule**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeleteAuthorizationServerPolicyRule) | **DELETE** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Delete a Policy Rule
*OktaAuthorizationServerApi* | [**Invoke-OktaDeleteOAuth2Claim**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeleteOAuth2Claim) | **DELETE** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Delete a Custom Token Claim
*OktaAuthorizationServerApi* | [**Invoke-OktaDeleteOAuth2Scope**](docs/OktaAuthorizationServerApi.md#Invoke-OktaDeleteOAuth2Scope) | **DELETE** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Delete a Custom Token Scope
*OktaAuthorizationServerApi* | [**Get-OktaAuthorizationServer**](docs/OktaAuthorizationServerApi.md#Get-OktaAuthorizationServer) | **GET** /api/v1/authorizationServers/{authServerId} | Retrieve an Authorization Server
*OktaAuthorizationServerApi* | [**Get-OktaAuthorizationServerPolicy**](docs/OktaAuthorizationServerApi.md#Get-OktaAuthorizationServerPolicy) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Retrieve a Policy
*OktaAuthorizationServerApi* | [**Get-OktaAuthorizationServerPolicyRule**](docs/OktaAuthorizationServerApi.md#Get-OktaAuthorizationServerPolicyRule) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Retrieve a Policy Rule
*OktaAuthorizationServerApi* | [**Get-OktaOAuth2Claim**](docs/OktaAuthorizationServerApi.md#Get-OktaOAuth2Claim) | **GET** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Retrieve a Custom Token Claim
*OktaAuthorizationServerApi* | [**Get-OktaOAuth2Scope**](docs/OktaAuthorizationServerApi.md#Get-OktaOAuth2Scope) | **GET** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Retrieve a Custom Token Scope
*OktaAuthorizationServerApi* | [**Get-OktaRefreshTokenForAuthorizationServerAndClient**](docs/OktaAuthorizationServerApi.md#Get-OktaRefreshTokenForAuthorizationServerAndClient) | **GET** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId} | Retrieve a Refresh Token for a Client
*OktaAuthorizationServerApi* | [**Invoke-OktaListAuthorizationServerKeys**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServerKeys) | **GET** /api/v1/authorizationServers/{authServerId}/credentials/keys | List all Credential Keys
*OktaAuthorizationServerApi* | [**Invoke-OktaListAuthorizationServerPolicies**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServerPolicies) | **GET** /api/v1/authorizationServers/{authServerId}/policies | List all Policies
*OktaAuthorizationServerApi* | [**Invoke-OktaListAuthorizationServerPolicyRules**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServerPolicyRules) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules | List all Policy Rules
*OktaAuthorizationServerApi* | [**Invoke-OktaListAuthorizationServers**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServers) | **GET** /api/v1/authorizationServers | List all Authorization Servers
*OktaAuthorizationServerApi* | [**Invoke-OktaListOAuth2Claims**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListOAuth2Claims) | **GET** /api/v1/authorizationServers/{authServerId}/claims | List all Custom Token Claims
*OktaAuthorizationServerApi* | [**Invoke-OktaListOAuth2ClientsForAuthorizationServer**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListOAuth2ClientsForAuthorizationServer) | **GET** /api/v1/authorizationServers/{authServerId}/clients | List all Clients
*OktaAuthorizationServerApi* | [**Invoke-OktaListOAuth2Scopes**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListOAuth2Scopes) | **GET** /api/v1/authorizationServers/{authServerId}/scopes | List all Custom Token Scopes
*OktaAuthorizationServerApi* | [**Invoke-OktaListRefreshTokensForAuthorizationServerAndClient**](docs/OktaAuthorizationServerApi.md#Invoke-OktaListRefreshTokensForAuthorizationServerAndClient) | **GET** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens | List all Refresh Tokens for a Client
*OktaAuthorizationServerApi* | [**Revoke-OktaRefreshTokenForAuthorizationServerAndClient**](docs/OktaAuthorizationServerApi.md#Revoke-OktaRefreshTokenForAuthorizationServerAndClient) | **DELETE** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId} | Revoke a Refresh Token for a Client
*OktaAuthorizationServerApi* | [**Revoke-OktaRefreshTokensForAuthorizationServerAndClient**](docs/OktaAuthorizationServerApi.md#Revoke-OktaRefreshTokensForAuthorizationServerAndClient) | **DELETE** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens | Revoke all Refresh Tokens for a Client
*OktaAuthorizationServerApi* | [**Invoke-OktaRotateAuthorizationServerKeys**](docs/OktaAuthorizationServerApi.md#Invoke-OktaRotateAuthorizationServerKeys) | **POST** /api/v1/authorizationServers/{authServerId}/credentials/lifecycle/keyRotate | Rotate all Credential Keys
*OktaAuthorizationServerApi* | [**Update-OktaAuthorizationServer**](docs/OktaAuthorizationServerApi.md#Update-OktaAuthorizationServer) | **PUT** /api/v1/authorizationServers/{authServerId} | Replace an Authorization Server
*OktaAuthorizationServerApi* | [**Update-OktaAuthorizationServerPolicy**](docs/OktaAuthorizationServerApi.md#Update-OktaAuthorizationServerPolicy) | **PUT** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Replace a Policy
*OktaAuthorizationServerApi* | [**Update-OktaAuthorizationServerPolicyRule**](docs/OktaAuthorizationServerApi.md#Update-OktaAuthorizationServerPolicyRule) | **PUT** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Replace a Policy Rule
*OktaAuthorizationServerApi* | [**Update-OktaOAuth2Claim**](docs/OktaAuthorizationServerApi.md#Update-OktaOAuth2Claim) | **PUT** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Replace a Custom Token Claim
*OktaAuthorizationServerApi* | [**Update-OktaOAuth2Scope**](docs/OktaAuthorizationServerApi.md#Update-OktaOAuth2Scope) | **PUT** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Replace a Custom Token Scope
*OktaBehaviorApi* | [**Invoke-OktaActivateBehaviorDetectionRule**](docs/OktaBehaviorApi.md#Invoke-OktaActivateBehaviorDetectionRule) | **POST** /api/v1/behaviors/{behaviorId}/lifecycle/activate | Activate a Behavior Detection Rule
*OktaBehaviorApi* | [**New-OktaBehaviorDetectionRule**](docs/OktaBehaviorApi.md#New-OktaBehaviorDetectionRule) | **POST** /api/v1/behaviors | Create a Behavior Detection Rule
*OktaBehaviorApi* | [**Invoke-OktaDeactivateBehaviorDetectionRule**](docs/OktaBehaviorApi.md#Invoke-OktaDeactivateBehaviorDetectionRule) | **POST** /api/v1/behaviors/{behaviorId}/lifecycle/deactivate | Deactivate a Behavior Detection Rule
*OktaBehaviorApi* | [**Invoke-OktaDeleteBehaviorDetectionRule**](docs/OktaBehaviorApi.md#Invoke-OktaDeleteBehaviorDetectionRule) | **DELETE** /api/v1/behaviors/{behaviorId} | Delete a Behavior Detection Rule
*OktaBehaviorApi* | [**Get-OktaBehaviorDetectionRule**](docs/OktaBehaviorApi.md#Get-OktaBehaviorDetectionRule) | **GET** /api/v1/behaviors/{behaviorId} | Retrieve a Behavior Detection Rule
*OktaBehaviorApi* | [**Invoke-OktaListBehaviorDetectionRules**](docs/OktaBehaviorApi.md#Invoke-OktaListBehaviorDetectionRules) | **GET** /api/v1/behaviors | List all Behavior Detection Rules
*OktaBehaviorApi* | [**Update-OktaBehaviorDetectionRule**](docs/OktaBehaviorApi.md#Update-OktaBehaviorDetectionRule) | **PUT** /api/v1/behaviors/{behaviorId} | Replace a Behavior Detection Rule
*OktaCAPTCHAApi* | [**New-OktaCaptchaInstance**](docs/OktaCAPTCHAApi.md#New-OktaCaptchaInstance) | **POST** /api/v1/captchas | Create a CAPTCHA instance
*OktaCAPTCHAApi* | [**Invoke-OktaDeleteCaptchaInstance**](docs/OktaCAPTCHAApi.md#Invoke-OktaDeleteCaptchaInstance) | **DELETE** /api/v1/captchas/{captchaId} | Delete a CAPTCHA Instance
*OktaCAPTCHAApi* | [**Get-OktaCaptchaInstance**](docs/OktaCAPTCHAApi.md#Get-OktaCaptchaInstance) | **GET** /api/v1/captchas/{captchaId} | Retrieve a CAPTCHA Instance
*OktaCAPTCHAApi* | [**Invoke-OktaListCaptchaInstances**](docs/OktaCAPTCHAApi.md#Invoke-OktaListCaptchaInstances) | **GET** /api/v1/captchas | List all CAPTCHA instances
*OktaCAPTCHAApi* | [**Invoke-OktaPartialUpdateCaptchaInstance**](docs/OktaCAPTCHAApi.md#Invoke-OktaPartialUpdateCaptchaInstance) | **POST** /api/v1/captchas/{captchaId} | Update a CAPTCHA instance
*OktaCAPTCHAApi* | [**Update-OktaCaptchaInstance**](docs/OktaCAPTCHAApi.md#Update-OktaCaptchaInstance) | **PUT** /api/v1/captchas/{captchaId} | Replace a CAPTCHA instance
*OktaCustomizationApi* | [**New-OktaBrand**](docs/OktaCustomizationApi.md#New-OktaBrand) | **POST** /api/v1/brands | Create a Brand
*OktaCustomizationApi* | [**New-OktaEmailCustomization**](docs/OktaCustomizationApi.md#New-OktaEmailCustomization) | **POST** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | Create an Email Customization
*OktaCustomizationApi* | [**Invoke-OktaDeleteAllCustomizations**](docs/OktaCustomizationApi.md#Invoke-OktaDeleteAllCustomizations) | **DELETE** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | Delete all Email Customizations
*OktaCustomizationApi* | [**Invoke-OktaDeleteBrand**](docs/OktaCustomizationApi.md#Invoke-OktaDeleteBrand) | **DELETE** /api/v1/brands/{brandId} | Delete a brand
*OktaCustomizationApi* | [**Invoke-OktaDeleteBrandThemeBackgroundImage**](docs/OktaCustomizationApi.md#Invoke-OktaDeleteBrandThemeBackgroundImage) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/background-image | Delete the Background Image
*OktaCustomizationApi* | [**Invoke-OktaDeleteBrandThemeFavicon**](docs/OktaCustomizationApi.md#Invoke-OktaDeleteBrandThemeFavicon) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/favicon | Delete the Favicon
*OktaCustomizationApi* | [**Invoke-OktaDeleteBrandThemeLogo**](docs/OktaCustomizationApi.md#Invoke-OktaDeleteBrandThemeLogo) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/logo | Delete the Logo
*OktaCustomizationApi* | [**Invoke-OktaDeleteEmailCustomization**](docs/OktaCustomizationApi.md#Invoke-OktaDeleteEmailCustomization) | **DELETE** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Delete an Email Customization
*OktaCustomizationApi* | [**Get-OktaBrand**](docs/OktaCustomizationApi.md#Get-OktaBrand) | **GET** /api/v1/brands/{brandId} | Retrieve a Brand
*OktaCustomizationApi* | [**Get-OktaBrandDomains**](docs/OktaCustomizationApi.md#Get-OktaBrandDomains) | **GET** /api/v1/brands/{brandId}/domains | List all Domains associated with a Brand
*OktaCustomizationApi* | [**Get-OktaBrandTheme**](docs/OktaCustomizationApi.md#Get-OktaBrandTheme) | **GET** /api/v1/brands/{brandId}/themes/{themeId} | Retrieve a Theme
*OktaCustomizationApi* | [**Get-OktaCustomizationPreview**](docs/OktaCustomizationApi.md#Get-OktaCustomizationPreview) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId}/preview | Preview an Email Customization
*OktaCustomizationApi* | [**Get-OktaEmailCustomization**](docs/OktaCustomizationApi.md#Get-OktaEmailCustomization) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Retrieve an Email Customization
*OktaCustomizationApi* | [**Get-OktaEmailDefaultContent**](docs/OktaCustomizationApi.md#Get-OktaEmailDefaultContent) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/default-content | Retrieve an Email Template Default Content
*OktaCustomizationApi* | [**Get-OktaEmailDefaultPreview**](docs/OktaCustomizationApi.md#Get-OktaEmailDefaultPreview) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/default-content/preview | Preview the Email Template Default Content
*OktaCustomizationApi* | [**Get-OktaEmailSettings**](docs/OktaCustomizationApi.md#Get-OktaEmailSettings) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/settings | Retrieve the Email Template Settings
*OktaCustomizationApi* | [**Get-OktaEmailTemplate**](docs/OktaCustomizationApi.md#Get-OktaEmailTemplate) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName} | Retrieve an Email Template
*OktaCustomizationApi* | [**Invoke-OktaLinkBrandDomain**](docs/OktaCustomizationApi.md#Invoke-OktaLinkBrandDomain) | **POST** /api/v1/brands/{brandId}/domains | Link a Brand to a Domain
*OktaCustomizationApi* | [**Invoke-OktaListAllSignInWidgetVersions**](docs/OktaCustomizationApi.md#Invoke-OktaListAllSignInWidgetVersions) | **GET** /api/v1/brands/{brandId}/pages/sign-in/widget-versions | List all Sign-in Widget Versions
*OktaCustomizationApi* | [**Invoke-OktaListBrandThemes**](docs/OktaCustomizationApi.md#Invoke-OktaListBrandThemes) | **GET** /api/v1/brands/{brandId}/themes | List all Themes
*OktaCustomizationApi* | [**Invoke-OktaListBrands**](docs/OktaCustomizationApi.md#Invoke-OktaListBrands) | **GET** /api/v1/brands | List all Brands
*OktaCustomizationApi* | [**Invoke-OktaListEmailCustomizations**](docs/OktaCustomizationApi.md#Invoke-OktaListEmailCustomizations) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | List all Email Customizations
*OktaCustomizationApi* | [**Invoke-OktaListEmailTemplates**](docs/OktaCustomizationApi.md#Invoke-OktaListEmailTemplates) | **GET** /api/v1/brands/{brandId}/templates/email | List all Email Templates
*OktaCustomizationApi* | [**Invoke-OktaReplaceCustomizedErrorPage**](docs/OktaCustomizationApi.md#Invoke-OktaReplaceCustomizedErrorPage) | **PUT** /api/v1/brands/{brandId}/pages/error/customized | Replace the Customized Error Page
*OktaCustomizationApi* | [**Invoke-OktaReplaceCustomizedSignInPage**](docs/OktaCustomizationApi.md#Invoke-OktaReplaceCustomizedSignInPage) | **PUT** /api/v1/brands/{brandId}/pages/sign-in/customized | Replace the Customized Sign-in Page
*OktaCustomizationApi* | [**Invoke-OktaReplacePreviewErrorPage**](docs/OktaCustomizationApi.md#Invoke-OktaReplacePreviewErrorPage) | **PUT** /api/v1/brands/{brandId}/pages/error/preview | Replace the Preview Error Page
*OktaCustomizationApi* | [**Invoke-OktaReplacePreviewSignInPage**](docs/OktaCustomizationApi.md#Invoke-OktaReplacePreviewSignInPage) | **PUT** /api/v1/brands/{brandId}/pages/sign-in/preview | Replace the Preview Sign-in Page
*OktaCustomizationApi* | [**Invoke-OktaReplaceSignOutPageSettings**](docs/OktaCustomizationApi.md#Invoke-OktaReplaceSignOutPageSettings) | **PUT** /api/v1/brands/{brandId}/pages/sign-out/customized | Replace the Sign-out Page Settings
*OktaCustomizationApi* | [**Reset-OktaCustomizedErrorPage**](docs/OktaCustomizationApi.md#Reset-OktaCustomizedErrorPage) | **DELETE** /api/v1/brands/{brandId}/pages/error/customized | Reset the Customized Error Page
*OktaCustomizationApi* | [**Reset-OktaCustomizedSignInPage**](docs/OktaCustomizationApi.md#Reset-OktaCustomizedSignInPage) | **DELETE** /api/v1/brands/{brandId}/pages/sign-in/customized | Reset the Customized Sign-in Page
*OktaCustomizationApi* | [**Reset-OktaPreviewErrorPage**](docs/OktaCustomizationApi.md#Reset-OktaPreviewErrorPage) | **DELETE** /api/v1/brands/{brandId}/pages/error/preview | Reset the Preview Error Page
*OktaCustomizationApi* | [**Reset-OktaPreviewSignInPage**](docs/OktaCustomizationApi.md#Reset-OktaPreviewSignInPage) | **DELETE** /api/v1/brands/{brandId}/pages/sign-in/preview | Reset the Preview Sign-in Page
*OktaCustomizationApi* | [**Invoke-OktaRetrieveCustomizedErrorPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrieveCustomizedErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/customized | Retrieve the Customized Error Page
*OktaCustomizationApi* | [**Invoke-OktaRetrieveCustomizedSignInPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrieveCustomizedSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/customized | Retrieve the Customized Sign-in Page
*OktaCustomizationApi* | [**Invoke-OktaRetrieveDefaultErrorPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrieveDefaultErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/default | Retrieve the Default Error Page
*OktaCustomizationApi* | [**Invoke-OktaRetrieveDefaultSignInPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrieveDefaultSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/default | Retrieve the Default Sign-in Page
*OktaCustomizationApi* | [**Invoke-OktaRetrieveErrorPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrieveErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error | Retrieve the Error Page
*OktaCustomizationApi* | [**Invoke-OktaRetrievePreviewErrorPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrievePreviewErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/preview | Retrieve the Preview Error Page Preview
*OktaCustomizationApi* | [**Invoke-OktaRetrievePreviewSignInPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrievePreviewSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/preview | Retrieve the Preview Sign-in Page Preview
*OktaCustomizationApi* | [**Invoke-OktaRetrieveSignInPage**](docs/OktaCustomizationApi.md#Invoke-OktaRetrieveSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in | Retrieve the Sign-in Page
*OktaCustomizationApi* | [**Invoke-OktaRetrieveSignOutPageSettings**](docs/OktaCustomizationApi.md#Invoke-OktaRetrieveSignOutPageSettings) | **GET** /api/v1/brands/{brandId}/pages/sign-out/customized | Retrieve the Sign-out Page Settings
*OktaCustomizationApi* | [**Send-OktaTestEmail**](docs/OktaCustomizationApi.md#Send-OktaTestEmail) | **POST** /api/v1/brands/{brandId}/templates/email/{templateName}/test | Send a Test Email
*OktaCustomizationApi* | [**Invoke-OktaUnlinkBrandDomain**](docs/OktaCustomizationApi.md#Invoke-OktaUnlinkBrandDomain) | **DELETE** /api/v1/brands/{brandId}/domains/{domainId} | Unlink a Brand from a Domain
*OktaCustomizationApi* | [**Update-OktaBrand**](docs/OktaCustomizationApi.md#Update-OktaBrand) | **PUT** /api/v1/brands/{brandId} | Replace a Brand
*OktaCustomizationApi* | [**Update-OktaBrandTheme**](docs/OktaCustomizationApi.md#Update-OktaBrandTheme) | **PUT** /api/v1/brands/{brandId}/themes/{themeId} | Replace a Theme
*OktaCustomizationApi* | [**Update-OktaEmailCustomization**](docs/OktaCustomizationApi.md#Update-OktaEmailCustomization) | **PUT** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Replace an Email Customization
*OktaCustomizationApi* | [**Update-OktaEmailSettings**](docs/OktaCustomizationApi.md#Update-OktaEmailSettings) | **PUT** /api/v1/brands/{brandId}/templates/email/{templateName}/settings | Replace the Email Template Settings
*OktaCustomizationApi* | [**Invoke-OktaUploadBrandThemeBackgroundImage**](docs/OktaCustomizationApi.md#Invoke-OktaUploadBrandThemeBackgroundImage) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/background-image | Upload the Background Image
*OktaCustomizationApi* | [**Invoke-OktaUploadBrandThemeFavicon**](docs/OktaCustomizationApi.md#Invoke-OktaUploadBrandThemeFavicon) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/favicon | Upload the Favicon
*OktaCustomizationApi* | [**Invoke-OktaUploadBrandThemeLogo**](docs/OktaCustomizationApi.md#Invoke-OktaUploadBrandThemeLogo) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/logo | Upload the Logo
*OktaDeviceApi* | [**Invoke-OktaActivateDevice**](docs/OktaDeviceApi.md#Invoke-OktaActivateDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/activate | Activate a Device
*OktaDeviceApi* | [**Invoke-OktaDeactivateDevice**](docs/OktaDeviceApi.md#Invoke-OktaDeactivateDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/deactivate | Deactivate a Device
*OktaDeviceApi* | [**Invoke-OktaDeleteDevice**](docs/OktaDeviceApi.md#Invoke-OktaDeleteDevice) | **DELETE** /api/v1/devices/{deviceId} | Delete a Device
*OktaDeviceApi* | [**Get-OktaDevice**](docs/OktaDeviceApi.md#Get-OktaDevice) | **GET** /api/v1/devices/{deviceId} | Retrieve a Device
*OktaDeviceApi* | [**Invoke-OktaListDevices**](docs/OktaDeviceApi.md#Invoke-OktaListDevices) | **GET** /api/v1/devices | List all Devices
*OktaDeviceApi* | [**Suspend-OktaDevice**](docs/OktaDeviceApi.md#Suspend-OktaDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/suspend | Suspend a Device
*OktaDeviceApi* | [**Invoke-OktaUnsuspendDevice**](docs/OktaDeviceApi.md#Invoke-OktaUnsuspendDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/unsuspend | Unsuspend a Device
*OktaDeviceAssuranceApi* | [**New-OktaDeviceAssurancePolicy**](docs/OktaDeviceAssuranceApi.md#New-OktaDeviceAssurancePolicy) | **POST** /api/v1/device-assurances | Create a Device Assurance Policy
*OktaDeviceAssuranceApi* | [**Invoke-OktaDeleteDeviceAssurancePolicy**](docs/OktaDeviceAssuranceApi.md#Invoke-OktaDeleteDeviceAssurancePolicy) | **DELETE** /api/v1/device-assurances/{deviceAssuranceId} | Delete a Device Assurance Policy
*OktaDeviceAssuranceApi* | [**Get-OktaDeviceAssurancePolicy**](docs/OktaDeviceAssuranceApi.md#Get-OktaDeviceAssurancePolicy) | **GET** /api/v1/device-assurances/{deviceAssuranceId} | Retrieve a Device Assurance Policy
*OktaDeviceAssuranceApi* | [**Invoke-OktaListDeviceAssurancePolicies**](docs/OktaDeviceAssuranceApi.md#Invoke-OktaListDeviceAssurancePolicies) | **GET** /api/v1/device-assurances | List all Device Assurance Policies
*OktaDeviceAssuranceApi* | [**Update-OktaDeviceAssurancePolicy**](docs/OktaDeviceAssuranceApi.md#Update-OktaDeviceAssurancePolicy) | **PUT** /api/v1/device-assurances/{deviceAssuranceId} | Replace a Device Assurance Policy
*OktaDomainApi* | [**New-OktaCertificate**](docs/OktaDomainApi.md#New-OktaCertificate) | **PUT** /api/v1/domains/{domainId}/certificate | Replace the Certificate
*OktaDomainApi* | [**New-OktaDomain**](docs/OktaDomainApi.md#New-OktaDomain) | **POST** /api/v1/domains | Create a Domain
*OktaDomainApi* | [**Invoke-OktaDeleteDomain**](docs/OktaDomainApi.md#Invoke-OktaDeleteDomain) | **DELETE** /api/v1/domains/{domainId} | Delete a Domain
*OktaDomainApi* | [**Get-OktaDomain**](docs/OktaDomainApi.md#Get-OktaDomain) | **GET** /api/v1/domains/{domainId} | Retrieve a Domain
*OktaDomainApi* | [**Invoke-OktaListDomains**](docs/OktaDomainApi.md#Invoke-OktaListDomains) | **GET** /api/v1/domains | List all Domains
*OktaDomainApi* | [**Update-OktaDomain**](docs/OktaDomainApi.md#Update-OktaDomain) | **PUT** /api/v1/domains/{domainId} | Replace a Domain's brandId
*OktaDomainApi* | [**Test-OktaDomain**](docs/OktaDomainApi.md#Test-OktaDomain) | **POST** /api/v1/domains/{domainId}/verify | Verify a Domain
*OktaEmailDomainApi* | [**New-OktaEmailDomain**](docs/OktaEmailDomainApi.md#New-OktaEmailDomain) | **POST** /api/v1/email-domains | Create an Email Domain
*OktaEmailDomainApi* | [**Invoke-OktaDeleteEmailDomain**](docs/OktaEmailDomainApi.md#Invoke-OktaDeleteEmailDomain) | **DELETE** /api/v1/email-domains/{emailDomainId} | Delete an Email Domain
*OktaEmailDomainApi* | [**Get-OktaEmailDomain**](docs/OktaEmailDomainApi.md#Get-OktaEmailDomain) | **GET** /api/v1/email-domains/{emailDomainId} | Retrieve a Email Domain
*OktaEmailDomainApi* | [**Invoke-OktaListEmailDomainBrands**](docs/OktaEmailDomainApi.md#Invoke-OktaListEmailDomainBrands) | **GET** /api/v1/email-domains/{emailDomainId}/brands | List all brands linked to an email domain
*OktaEmailDomainApi* | [**Invoke-OktaListEmailDomains**](docs/OktaEmailDomainApi.md#Invoke-OktaListEmailDomains) | **GET** /api/v1/email-domains | List all email domains
*OktaEmailDomainApi* | [**Update-OktaEmailDomain**](docs/OktaEmailDomainApi.md#Update-OktaEmailDomain) | **PUT** /api/v1/email-domains/{emailDomainId} | Replace an Email Domain
*OktaEmailDomainApi* | [**Test-OktaEmailDomain**](docs/OktaEmailDomainApi.md#Test-OktaEmailDomain) | **POST** /api/v1/email-domains/{emailDomainId}/verify | Verify an Email Domain
*OktaEventHookApi* | [**Invoke-OktaActivateEventHook**](docs/OktaEventHookApi.md#Invoke-OktaActivateEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/activate | Activate an Event Hook
*OktaEventHookApi* | [**New-OktaEventHook**](docs/OktaEventHookApi.md#New-OktaEventHook) | **POST** /api/v1/eventHooks | Create an Event Hook
*OktaEventHookApi* | [**Invoke-OktaDeactivateEventHook**](docs/OktaEventHookApi.md#Invoke-OktaDeactivateEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/deactivate | Deactivate an Event Hook
*OktaEventHookApi* | [**Invoke-OktaDeleteEventHook**](docs/OktaEventHookApi.md#Invoke-OktaDeleteEventHook) | **DELETE** /api/v1/eventHooks/{eventHookId} | Delete an Event Hook
*OktaEventHookApi* | [**Get-OktaEventHook**](docs/OktaEventHookApi.md#Get-OktaEventHook) | **GET** /api/v1/eventHooks/{eventHookId} | Retrieve an Event Hook
*OktaEventHookApi* | [**Invoke-OktaListEventHooks**](docs/OktaEventHookApi.md#Invoke-OktaListEventHooks) | **GET** /api/v1/eventHooks | List all Event Hooks
*OktaEventHookApi* | [**Update-OktaEventHook**](docs/OktaEventHookApi.md#Update-OktaEventHook) | **PUT** /api/v1/eventHooks/{eventHookId} | Replace an Event Hook
*OktaEventHookApi* | [**Test-OktaEventHook**](docs/OktaEventHookApi.md#Test-OktaEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/verify | Verify an Event Hook
*OktaFeatureApi* | [**Get-OktaFeature**](docs/OktaFeatureApi.md#Get-OktaFeature) | **GET** /api/v1/features/{featureId} | Retrieve a Feature
*OktaFeatureApi* | [**Invoke-OktaListFeatureDependencies**](docs/OktaFeatureApi.md#Invoke-OktaListFeatureDependencies) | **GET** /api/v1/features/{featureId}/dependencies | List all Dependencies
*OktaFeatureApi* | [**Invoke-OktaListFeatureDependents**](docs/OktaFeatureApi.md#Invoke-OktaListFeatureDependents) | **GET** /api/v1/features/{featureId}/dependents | List all Dependents
*OktaFeatureApi* | [**Invoke-OktaListFeatures**](docs/OktaFeatureApi.md#Invoke-OktaListFeatures) | **GET** /api/v1/features | List all Features
*OktaFeatureApi* | [**Update-OktaFeatureLifecycle**](docs/OktaFeatureApi.md#Update-OktaFeatureLifecycle) | **POST** /api/v1/features/{featureId}/{lifecycle} | Update a Feature Lifecycle
*OktaGroupApi* | [**Invoke-OktaActivateGroupRule**](docs/OktaGroupApi.md#Invoke-OktaActivateGroupRule) | **POST** /api/v1/groups/rules/{ruleId}/lifecycle/activate | Activate a Group Rule
*OktaGroupApi* | [**Add-OktaGroupOwner**](docs/OktaGroupApi.md#Add-OktaGroupOwner) | **POST** /api/v1/groups/{groupId}/owners | Assign a Group Owner
*OktaGroupApi* | [**Add-OktaUserToGroup**](docs/OktaGroupApi.md#Add-OktaUserToGroup) | **PUT** /api/v1/groups/{groupId}/users/{userId} | Assign a User
*OktaGroupApi* | [**New-OktaGroup**](docs/OktaGroupApi.md#New-OktaGroup) | **POST** /api/v1/groups | Create a Group
*OktaGroupApi* | [**New-OktaGroupRule**](docs/OktaGroupApi.md#New-OktaGroupRule) | **POST** /api/v1/groups/rules | Create a Group Rule
*OktaGroupApi* | [**Invoke-OktaDeactivateGroupRule**](docs/OktaGroupApi.md#Invoke-OktaDeactivateGroupRule) | **POST** /api/v1/groups/rules/{ruleId}/lifecycle/deactivate | Deactivate a Group Rule
*OktaGroupApi* | [**Invoke-OktaDeleteGroup**](docs/OktaGroupApi.md#Invoke-OktaDeleteGroup) | **DELETE** /api/v1/groups/{groupId} | Delete a Group
*OktaGroupApi* | [**Invoke-OktaDeleteGroupOwner**](docs/OktaGroupApi.md#Invoke-OktaDeleteGroupOwner) | **DELETE** /api/v1/groups/{groupId}/owners/{ownerId} | Delete a Group Owner
*OktaGroupApi* | [**Invoke-OktaDeleteGroupRule**](docs/OktaGroupApi.md#Invoke-OktaDeleteGroupRule) | **DELETE** /api/v1/groups/rules/{ruleId} | Delete a group Rule
*OktaGroupApi* | [**Get-OktaGroup**](docs/OktaGroupApi.md#Get-OktaGroup) | **GET** /api/v1/groups/{groupId} | List all Group Rules
*OktaGroupApi* | [**Get-OktaGroupOwners**](docs/OktaGroupApi.md#Get-OktaGroupOwners) | **GET** /api/v1/groups/{groupId}/owners | List all Owners
*OktaGroupApi* | [**Get-OktaGroupRule**](docs/OktaGroupApi.md#Get-OktaGroupRule) | **GET** /api/v1/groups/rules/{ruleId} | Retrieve a Group Rule
*OktaGroupApi* | [**Invoke-OktaListAssignedApplicationsForGroup**](docs/OktaGroupApi.md#Invoke-OktaListAssignedApplicationsForGroup) | **GET** /api/v1/groups/{groupId}/apps | List all Assigned Applications
*OktaGroupApi* | [**Invoke-OktaListGroupRules**](docs/OktaGroupApi.md#Invoke-OktaListGroupRules) | **GET** /api/v1/groups/rules | List all Group Rules
*OktaGroupApi* | [**Invoke-OktaListGroupUsers**](docs/OktaGroupApi.md#Invoke-OktaListGroupUsers) | **GET** /api/v1/groups/{groupId}/users | List all Member Users
*OktaGroupApi* | [**Invoke-OktaListGroups**](docs/OktaGroupApi.md#Invoke-OktaListGroups) | **GET** /api/v1/groups | List all Groups
*OktaGroupApi* | [**Remove-OktaUserFromGroup**](docs/OktaGroupApi.md#Remove-OktaUserFromGroup) | **DELETE** /api/v1/groups/{groupId}/users/{userId} | Unassign a User
*OktaGroupApi* | [**Update-OktaGroup**](docs/OktaGroupApi.md#Update-OktaGroup) | **PUT** /api/v1/groups/{groupId} | Replace a Group
*OktaGroupApi* | [**Update-OktaGroupRule**](docs/OktaGroupApi.md#Update-OktaGroupRule) | **PUT** /api/v1/groups/rules/{ruleId} | Replace a Group Rule
*OktaHookKeyApi* | [**Add-OktaHookKey**](docs/OktaHookKeyApi.md#Add-OktaHookKey) | **POST** /api/v1/hook-keys | Create a key
*OktaHookKeyApi* | [**Invoke-OktaDeleteHookKey**](docs/OktaHookKeyApi.md#Invoke-OktaDeleteHookKey) | **DELETE** /api/v1/hook-keys/{hookKeyId} | Delete a key
*OktaHookKeyApi* | [**Get-OktaHookKey**](docs/OktaHookKeyApi.md#Get-OktaHookKey) | **GET** /api/v1/hook-keys/{hookKeyId} | Retrieve a key
*OktaHookKeyApi* | [**Get-OktaPublicKey**](docs/OktaHookKeyApi.md#Get-OktaPublicKey) | **GET** /api/v1/hook-keys/public/{keyId} | Retrieve a public key
*OktaHookKeyApi* | [**Invoke-OktaListHookKeys**](docs/OktaHookKeyApi.md#Invoke-OktaListHookKeys) | **GET** /api/v1/hook-keys | List all keys
*OktaHookKeyApi* | [**Invoke-OktaReplaceHookKey**](docs/OktaHookKeyApi.md#Invoke-OktaReplaceHookKey) | **PUT** /api/v1/hook-keys/{hookKeyId} | Replace a key
*OktaIdentityProviderApi* | [**Invoke-OktaActivateIdentityProvider**](docs/OktaIdentityProviderApi.md#Invoke-OktaActivateIdentityProvider) | **POST** /api/v1/idps/{idpId}/lifecycle/activate | Activate an Identity Provider
*OktaIdentityProviderApi* | [**Copy-OktaIdentityProviderKey**](docs/OktaIdentityProviderApi.md#Copy-OktaIdentityProviderKey) | **POST** /api/v1/idps/{idpId}/credentials/keys/{keyId}/clone | Clone a Signing Credential Key
*OktaIdentityProviderApi* | [**New-OktaIdentityProvider**](docs/OktaIdentityProviderApi.md#New-OktaIdentityProvider) | **POST** /api/v1/idps | Create an Identity Provider
*OktaIdentityProviderApi* | [**New-OktaIdentityProviderKey**](docs/OktaIdentityProviderApi.md#New-OktaIdentityProviderKey) | **POST** /api/v1/idps/credentials/keys | Create an X.509 Certificate Public Key
*OktaIdentityProviderApi* | [**Invoke-OktaDeactivateIdentityProvider**](docs/OktaIdentityProviderApi.md#Invoke-OktaDeactivateIdentityProvider) | **POST** /api/v1/idps/{idpId}/lifecycle/deactivate | Deactivate an Identity Provider
*OktaIdentityProviderApi* | [**Invoke-OktaDeleteIdentityProvider**](docs/OktaIdentityProviderApi.md#Invoke-OktaDeleteIdentityProvider) | **DELETE** /api/v1/idps/{idpId} | Delete an Identity Provider
*OktaIdentityProviderApi* | [**Invoke-OktaDeleteIdentityProviderKey**](docs/OktaIdentityProviderApi.md#Invoke-OktaDeleteIdentityProviderKey) | **DELETE** /api/v1/idps/credentials/keys/{keyId} | Delete a Signing Credential Key
*OktaIdentityProviderApi* | [**New-OktaCsrForIdentityProvider**](docs/OktaIdentityProviderApi.md#New-OktaCsrForIdentityProvider) | **POST** /api/v1/idps/{idpId}/credentials/csrs | Generate a Certificate Signing Request
*OktaIdentityProviderApi* | [**New-OktaIdentityProviderSigningKey**](docs/OktaIdentityProviderApi.md#New-OktaIdentityProviderSigningKey) | **POST** /api/v1/idps/{idpId}/credentials/keys/generate | Generate a new Signing Credential Key
*OktaIdentityProviderApi* | [**Get-OktaCsrForIdentityProvider**](docs/OktaIdentityProviderApi.md#Get-OktaCsrForIdentityProvider) | **GET** /api/v1/idps/{idpId}/credentials/csrs/{csrId} | Retrieve a Certificate Signing Request
*OktaIdentityProviderApi* | [**Get-OktaIdentityProvider**](docs/OktaIdentityProviderApi.md#Get-OktaIdentityProvider) | **GET** /api/v1/idps/{idpId} | Retrieve an Identity Provider
*OktaIdentityProviderApi* | [**Get-OktaIdentityProviderApplicationUser**](docs/OktaIdentityProviderApi.md#Get-OktaIdentityProviderApplicationUser) | **GET** /api/v1/idps/{idpId}/users/{userId} | Retrieve a User
*OktaIdentityProviderApi* | [**Get-OktaIdentityProviderKey**](docs/OktaIdentityProviderApi.md#Get-OktaIdentityProviderKey) | **GET** /api/v1/idps/credentials/keys/{keyId} | Retrieve an Credential Key
*OktaIdentityProviderApi* | [**Get-OktaIdentityProviderSigningKey**](docs/OktaIdentityProviderApi.md#Get-OktaIdentityProviderSigningKey) | **GET** /api/v1/idps/{idpId}/credentials/keys/{keyId} | Retrieve a Signing Credential Key
*OktaIdentityProviderApi* | [**Invoke-OktaLinkUserToIdentityProvider**](docs/OktaIdentityProviderApi.md#Invoke-OktaLinkUserToIdentityProvider) | **POST** /api/v1/idps/{idpId}/users/{userId} | Link a User to a Social IdP
*OktaIdentityProviderApi* | [**Invoke-OktaListCsrsForIdentityProvider**](docs/OktaIdentityProviderApi.md#Invoke-OktaListCsrsForIdentityProvider) | **GET** /api/v1/idps/{idpId}/credentials/csrs | List all Certificate Signing Requests
*OktaIdentityProviderApi* | [**Invoke-OktaListIdentityProviderApplicationUsers**](docs/OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviderApplicationUsers) | **GET** /api/v1/idps/{idpId}/users | List all Users
*OktaIdentityProviderApi* | [**Invoke-OktaListIdentityProviderKeys**](docs/OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviderKeys) | **GET** /api/v1/idps/credentials/keys | List all Credential Keys
*OktaIdentityProviderApi* | [**Invoke-OktaListIdentityProviderSigningKeys**](docs/OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviderSigningKeys) | **GET** /api/v1/idps/{idpId}/credentials/keys | List all Signing Credential Keys
*OktaIdentityProviderApi* | [**Invoke-OktaListIdentityProviders**](docs/OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviders) | **GET** /api/v1/idps | List all Identity Providers
*OktaIdentityProviderApi* | [**Invoke-OktaListSocialAuthTokens**](docs/OktaIdentityProviderApi.md#Invoke-OktaListSocialAuthTokens) | **GET** /api/v1/idps/{idpId}/users/{userId}/credentials/tokens | List all Tokens from a OIDC Identity Provider
*OktaIdentityProviderApi* | [**Publish-OktaCsrForIdentityProvider**](docs/OktaIdentityProviderApi.md#Publish-OktaCsrForIdentityProvider) | **POST** /api/v1/idps/{idpId}/credentials/csrs/{csrId}/lifecycle/publish | Publish a Certificate Signing Request
*OktaIdentityProviderApi* | [**Revoke-OktaCsrForIdentityProvider**](docs/OktaIdentityProviderApi.md#Revoke-OktaCsrForIdentityProvider) | **DELETE** /api/v1/idps/{idpId}/credentials/csrs/{csrId} | Revoke a Certificate Signing Request
*OktaIdentityProviderApi* | [**Invoke-OktaUnlinkUserFromIdentityProvider**](docs/OktaIdentityProviderApi.md#Invoke-OktaUnlinkUserFromIdentityProvider) | **DELETE** /api/v1/idps/{idpId}/users/{userId} | Unlink a User from IdP
*OktaIdentityProviderApi* | [**Update-OktaIdentityProvider**](docs/OktaIdentityProviderApi.md#Update-OktaIdentityProvider) | **PUT** /api/v1/idps/{idpId} | Replace an Identity Provider
*OktaInlineHookApi* | [**Invoke-OktaActivateInlineHook**](docs/OktaInlineHookApi.md#Invoke-OktaActivateInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/lifecycle/activate | Activate an Inline Hook
*OktaInlineHookApi* | [**New-OktaInlineHook**](docs/OktaInlineHookApi.md#New-OktaInlineHook) | **POST** /api/v1/inlineHooks | Create an Inline Hook
*OktaInlineHookApi* | [**Invoke-OktaDeactivateInlineHook**](docs/OktaInlineHookApi.md#Invoke-OktaDeactivateInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate | Deactivate an Inline Hook
*OktaInlineHookApi* | [**Invoke-OktaDeleteInlineHook**](docs/OktaInlineHookApi.md#Invoke-OktaDeleteInlineHook) | **DELETE** /api/v1/inlineHooks/{inlineHookId} | Delete an Inline Hook
*OktaInlineHookApi* | [**Invoke-OktaExecuteInlineHook**](docs/OktaInlineHookApi.md#Invoke-OktaExecuteInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/execute | Execute an Inline Hook
*OktaInlineHookApi* | [**Get-OktaInlineHook**](docs/OktaInlineHookApi.md#Get-OktaInlineHook) | **GET** /api/v1/inlineHooks/{inlineHookId} | Retrieve an Inline Hook
*OktaInlineHookApi* | [**Invoke-OktaListInlineHooks**](docs/OktaInlineHookApi.md#Invoke-OktaListInlineHooks) | **GET** /api/v1/inlineHooks | List all Inline Hooks
*OktaInlineHookApi* | [**Update-OktaInlineHook**](docs/OktaInlineHookApi.md#Update-OktaInlineHook) | **PUT** /api/v1/inlineHooks/{inlineHookId} | Replace an Inline Hook
*OktaLinkedObjectApi* | [**Add-OktaLinkedObjectDefinition**](docs/OktaLinkedObjectApi.md#Add-OktaLinkedObjectDefinition) | **POST** /api/v1/meta/schemas/user/linkedObjects | Create a Linked Object Definition
*OktaLinkedObjectApi* | [**Invoke-OktaDeleteLinkedObjectDefinition**](docs/OktaLinkedObjectApi.md#Invoke-OktaDeleteLinkedObjectDefinition) | **DELETE** /api/v1/meta/schemas/user/linkedObjects/{linkedObjectName} | Delete a Linked Object Definition
*OktaLinkedObjectApi* | [**Get-OktaLinkedObjectDefinition**](docs/OktaLinkedObjectApi.md#Get-OktaLinkedObjectDefinition) | **GET** /api/v1/meta/schemas/user/linkedObjects/{linkedObjectName} | Retrieve a Linked Object Definition
*OktaLinkedObjectApi* | [**Invoke-OktaListLinkedObjectDefinitions**](docs/OktaLinkedObjectApi.md#Invoke-OktaListLinkedObjectDefinitions) | **GET** /api/v1/meta/schemas/user/linkedObjects | List all Linked Object Definitions
*OktaLogStreamApi* | [**Invoke-OktaActivateLogStream**](docs/OktaLogStreamApi.md#Invoke-OktaActivateLogStream) | **POST** /api/v1/logStreams/{logStreamId}/lifecycle/activate | Activate a Log Stream
*OktaLogStreamApi* | [**New-OktaLogStream**](docs/OktaLogStreamApi.md#New-OktaLogStream) | **POST** /api/v1/logStreams | Create a Log Stream
*OktaLogStreamApi* | [**Invoke-OktaDeactivateLogStream**](docs/OktaLogStreamApi.md#Invoke-OktaDeactivateLogStream) | **POST** /api/v1/logStreams/{logStreamId}/lifecycle/deactivate | Deactivate a Log Stream
*OktaLogStreamApi* | [**Invoke-OktaDeleteLogStream**](docs/OktaLogStreamApi.md#Invoke-OktaDeleteLogStream) | **DELETE** /api/v1/logStreams/{logStreamId} | Delete a Log Stream
*OktaLogStreamApi* | [**Get-OktaLogStream**](docs/OktaLogStreamApi.md#Get-OktaLogStream) | **GET** /api/v1/logStreams/{logStreamId} | Retrieve a Log Stream
*OktaLogStreamApi* | [**Invoke-OktaListLogStreams**](docs/OktaLogStreamApi.md#Invoke-OktaListLogStreams) | **GET** /api/v1/logStreams | List all Log Streams
*OktaLogStreamApi* | [**Invoke-OktaReplaceLogStream**](docs/OktaLogStreamApi.md#Invoke-OktaReplaceLogStream) | **PUT** /api/v1/logStreams/{logStreamId} | Replace a Log Stream
*OktaNetworkZoneApi* | [**Invoke-OktaActivateNetworkZone**](docs/OktaNetworkZoneApi.md#Invoke-OktaActivateNetworkZone) | **POST** /api/v1/zones/{zoneId}/lifecycle/activate | Activate a Network Zone
*OktaNetworkZoneApi* | [**New-OktaNetworkZone**](docs/OktaNetworkZoneApi.md#New-OktaNetworkZone) | **POST** /api/v1/zones | Create a Network Zone
*OktaNetworkZoneApi* | [**Invoke-OktaDeactivateNetworkZone**](docs/OktaNetworkZoneApi.md#Invoke-OktaDeactivateNetworkZone) | **POST** /api/v1/zones/{zoneId}/lifecycle/deactivate | Deactivate a Network Zone
*OktaNetworkZoneApi* | [**Invoke-OktaDeleteNetworkZone**](docs/OktaNetworkZoneApi.md#Invoke-OktaDeleteNetworkZone) | **DELETE** /api/v1/zones/{zoneId} | Delete a Network Zone
*OktaNetworkZoneApi* | [**Get-OktaNetworkZone**](docs/OktaNetworkZoneApi.md#Get-OktaNetworkZone) | **GET** /api/v1/zones/{zoneId} | Retrieve a Network Zone
*OktaNetworkZoneApi* | [**Invoke-OktaListNetworkZones**](docs/OktaNetworkZoneApi.md#Invoke-OktaListNetworkZones) | **GET** /api/v1/zones | List all Network Zones
*OktaNetworkZoneApi* | [**Update-OktaNetworkZone**](docs/OktaNetworkZoneApi.md#Update-OktaNetworkZone) | **PUT** /api/v1/zones/{zoneId} | Replace a Network Zone
*OktaOrgSettingApi* | [**Invoke-OktaBulkRemoveEmailAddressBounces**](docs/OktaOrgSettingApi.md#Invoke-OktaBulkRemoveEmailAddressBounces) | **POST** /api/v1/org/email/bounces/remove-list | Remove Emails from Email Provider Bounce List
*OktaOrgSettingApi* | [**Invoke-OktaExtendOktaSupport**](docs/OktaOrgSettingApi.md#Invoke-OktaExtendOktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/extend | Extend Okta Support Access
*OktaOrgSettingApi* | [**Get-OktaOktaCommunicationSettings**](docs/OktaOrgSettingApi.md#Get-OktaOktaCommunicationSettings) | **GET** /api/v1/org/privacy/oktaCommunication | Retreive the Okta Communication Settings
*OktaOrgSettingApi* | [**Get-OktaOrgContactTypes**](docs/OktaOrgSettingApi.md#Get-OktaOrgContactTypes) | **GET** /api/v1/org/contacts | Retrieve the Org Contact Types
*OktaOrgSettingApi* | [**Get-OktaOrgContactUser**](docs/OktaOrgSettingApi.md#Get-OktaOrgContactUser) | **GET** /api/v1/org/contacts/{contactType} | Retrieve the User of the Contact Type
*OktaOrgSettingApi* | [**Get-OktaOrgOktaSupportSettings**](docs/OktaOrgSettingApi.md#Get-OktaOrgOktaSupportSettings) | **GET** /api/v1/org/privacy/oktaSupport | Retrieve the Okta Support Settings
*OktaOrgSettingApi* | [**Get-OktaOrgPreferences**](docs/OktaOrgSettingApi.md#Get-OktaOrgPreferences) | **GET** /api/v1/org/preferences | Retrieve the Org Preferences
*OktaOrgSettingApi* | [**Get-OktaOrgSettings**](docs/OktaOrgSettingApi.md#Get-OktaOrgSettings) | **GET** /api/v1/org | Retrieve the Org Settings
*OktaOrgSettingApi* | [**Grant-OktaOktaSupport**](docs/OktaOrgSettingApi.md#Grant-OktaOktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/grant | Grant Okta Support Access to your Org
*OktaOrgSettingApi* | [**Hide-OktaOktaUIFooter**](docs/OktaOrgSettingApi.md#Hide-OktaOktaUIFooter) | **POST** /api/v1/org/preferences/hideEndUserFooter | Update the Preference to Hide the Okta Dashboard Footer
*OktaOrgSettingApi* | [**Invoke-OktaOptInUsersToOktaCommunicationEmails**](docs/OktaOrgSettingApi.md#Invoke-OktaOptInUsersToOktaCommunicationEmails) | **POST** /api/v1/org/privacy/oktaCommunication/optIn | Opt in all Users to Okta Communication emails
*OktaOrgSettingApi* | [**Invoke-OktaOptOutUsersFromOktaCommunicationEmails**](docs/OktaOrgSettingApi.md#Invoke-OktaOptOutUsersFromOktaCommunicationEmails) | **POST** /api/v1/org/privacy/oktaCommunication/optOut | Opt out all Users from Okta Communication emails
*OktaOrgSettingApi* | [**Invoke-OktaPartialUpdateOrgSetting**](docs/OktaOrgSettingApi.md#Invoke-OktaPartialUpdateOrgSetting) | **POST** /api/v1/org | Update the Org Settings
*OktaOrgSettingApi* | [**Revoke-OktaOktaSupport**](docs/OktaOrgSettingApi.md#Revoke-OktaOktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/revoke | Revoke Okta Support Access
*OktaOrgSettingApi* | [**Show-OktaOktaUIFooter**](docs/OktaOrgSettingApi.md#Show-OktaOktaUIFooter) | **POST** /api/v1/org/preferences/showEndUserFooter | Update the Preference to Show the Okta Dashboard Footer
*OktaOrgSettingApi* | [**Update-OktaOrgContactUser**](docs/OktaOrgSettingApi.md#Update-OktaOrgContactUser) | **PUT** /api/v1/org/contacts/{contactType} | Replace the User of the Contact Type
*OktaOrgSettingApi* | [**Update-OktaOrgLogo**](docs/OktaOrgSettingApi.md#Update-OktaOrgLogo) | **POST** /api/v1/org/logo | Upload the Org Logo
*OktaOrgSettingApi* | [**Update-OktaOrgSetting**](docs/OktaOrgSettingApi.md#Update-OktaOrgSetting) | **PUT** /api/v1/org | Replace the Org Settings
*OktaOrgSettingApi* | [**Invoke-OktaWellknownOrgMetadata**](docs/OktaOrgSettingApi.md#Invoke-OktaWellknownOrgMetadata) | **GET** /.well-known/okta-organization | Retrieve the Well-Known Org Metadata
*OktaPolicyApi* | [**Invoke-OktaActivatePolicy**](docs/OktaPolicyApi.md#Invoke-OktaActivatePolicy) | **POST** /api/v1/policies/{policyId}/lifecycle/activate | Activate a Policy
*OktaPolicyApi* | [**Invoke-OktaActivatePolicyRule**](docs/OktaPolicyApi.md#Invoke-OktaActivatePolicyRule) | **POST** /api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/activate | Activate a Policy Rule
*OktaPolicyApi* | [**Copy-OktaPolicy**](docs/OktaPolicyApi.md#Copy-OktaPolicy) | **POST** /api/v1/policies/{policyId}/clone | Clone an existing policy
*OktaPolicyApi* | [**New-OktaPolicy**](docs/OktaPolicyApi.md#New-OktaPolicy) | **POST** /api/v1/policies | Create a Policy
*OktaPolicyApi* | [**New-OktaPolicyRule**](docs/OktaPolicyApi.md#New-OktaPolicyRule) | **POST** /api/v1/policies/{policyId}/rules | Create a Policy Rule
*OktaPolicyApi* | [**Invoke-OktaDeactivatePolicy**](docs/OktaPolicyApi.md#Invoke-OktaDeactivatePolicy) | **POST** /api/v1/policies/{policyId}/lifecycle/deactivate | Deactivate a Policy
*OktaPolicyApi* | [**Invoke-OktaDeactivatePolicyRule**](docs/OktaPolicyApi.md#Invoke-OktaDeactivatePolicyRule) | **POST** /api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate | Deactivate a Policy Rule
*OktaPolicyApi* | [**Invoke-OktaDeletePolicy**](docs/OktaPolicyApi.md#Invoke-OktaDeletePolicy) | **DELETE** /api/v1/policies/{policyId} | Delete a Policy
*OktaPolicyApi* | [**Invoke-OktaDeletePolicyRule**](docs/OktaPolicyApi.md#Invoke-OktaDeletePolicyRule) | **DELETE** /api/v1/policies/{policyId}/rules/{ruleId} | Delete a Policy Rule
*OktaPolicyApi* | [**Get-OktaPolicy**](docs/OktaPolicyApi.md#Get-OktaPolicy) | **GET** /api/v1/policies/{policyId} | Retrieve a Policy
*OktaPolicyApi* | [**Get-OktaPolicyRule**](docs/OktaPolicyApi.md#Get-OktaPolicyRule) | **GET** /api/v1/policies/{policyId}/rules/{ruleId} | Retrieve a Policy Rule
*OktaPolicyApi* | [**Invoke-OktaListPolicies**](docs/OktaPolicyApi.md#Invoke-OktaListPolicies) | **GET** /api/v1/policies | List all Policies
*OktaPolicyApi* | [**Invoke-OktaListPolicyRules**](docs/OktaPolicyApi.md#Invoke-OktaListPolicyRules) | **GET** /api/v1/policies/{policyId}/rules | List all Policy Rules
*OktaPolicyApi* | [**Update-OktaPolicy**](docs/OktaPolicyApi.md#Update-OktaPolicy) | **PUT** /api/v1/policies/{policyId} | Replace a Policy
*OktaPolicyApi* | [**Update-OktaPolicyRule**](docs/OktaPolicyApi.md#Update-OktaPolicyRule) | **PUT** /api/v1/policies/{policyId}/rules/{ruleId} | Replace a Policy Rule
*OktaPrincipalRateLimitApi* | [**New-OktaPrincipalRateLimitEntity**](docs/OktaPrincipalRateLimitApi.md#New-OktaPrincipalRateLimitEntity) | **POST** /api/v1/principal-rate-limits | Create a Principal Rate Limit
*OktaPrincipalRateLimitApi* | [**Get-OktaPrincipalRateLimitEntity**](docs/OktaPrincipalRateLimitApi.md#Get-OktaPrincipalRateLimitEntity) | **GET** /api/v1/principal-rate-limits/{principalRateLimitId} | Retrieve a Principal Rate Limit
*OktaPrincipalRateLimitApi* | [**Invoke-OktaListPrincipalRateLimitEntities**](docs/OktaPrincipalRateLimitApi.md#Invoke-OktaListPrincipalRateLimitEntities) | **GET** /api/v1/principal-rate-limits | List all Principal Rate Limits
*OktaPrincipalRateLimitApi* | [**Update-OktaPrincipalRateLimitEntity**](docs/OktaPrincipalRateLimitApi.md#Update-OktaPrincipalRateLimitEntity) | **PUT** /api/v1/principal-rate-limits/{principalRateLimitId} | Replace a Principal Rate Limit
*OktaProfileMappingApi* | [**Get-OktaProfileMapping**](docs/OktaProfileMappingApi.md#Get-OktaProfileMapping) | **GET** /api/v1/mappings/{mappingId} | Retrieve a Profile Mapping
*OktaProfileMappingApi* | [**Invoke-OktaListProfileMappings**](docs/OktaProfileMappingApi.md#Invoke-OktaListProfileMappings) | **GET** /api/v1/mappings | List all Profile Mappings
*OktaProfileMappingApi* | [**Update-OktaProfileMapping**](docs/OktaProfileMappingApi.md#Update-OktaProfileMapping) | **POST** /api/v1/mappings/{mappingId} | Update a Profile Mapping
*OktaPushProviderApi* | [**New-OktaPushProvider**](docs/OktaPushProviderApi.md#New-OktaPushProvider) | **POST** /api/v1/push-providers | Create a Push Provider
*OktaPushProviderApi* | [**Invoke-OktaDeletePushProvider**](docs/OktaPushProviderApi.md#Invoke-OktaDeletePushProvider) | **DELETE** /api/v1/push-providers/{pushProviderId} | Delete a Push Provider
*OktaPushProviderApi* | [**Get-OktaPushProvider**](docs/OktaPushProviderApi.md#Get-OktaPushProvider) | **GET** /api/v1/push-providers/{pushProviderId} | Retrieve a Push Provider
*OktaPushProviderApi* | [**Invoke-OktaListPushProviders**](docs/OktaPushProviderApi.md#Invoke-OktaListPushProviders) | **GET** /api/v1/push-providers | List all Push Providers
*OktaPushProviderApi* | [**Update-OktaPushProvider**](docs/OktaPushProviderApi.md#Update-OktaPushProvider) | **PUT** /api/v1/push-providers/{pushProviderId} | Replace a Push Provider
*OktaRateLimitSettingsApi* | [**Get-OktaRateLimitSettingsAdminNotifications**](docs/OktaRateLimitSettingsApi.md#Get-OktaRateLimitSettingsAdminNotifications) | **GET** /api/v1/rate-limit-settings/admin-notifications | Retrieve the Rate Limit Admin Notification Settings
*OktaRateLimitSettingsApi* | [**Get-OktaRateLimitSettingsPerClient**](docs/OktaRateLimitSettingsApi.md#Get-OktaRateLimitSettingsPerClient) | **GET** /api/v1/rate-limit-settings/per-client | Retrieve the Per-Client Rate Limit Settings
*OktaRateLimitSettingsApi* | [**Invoke-OktaReplaceRateLimitSettingsAdminNotifications**](docs/OktaRateLimitSettingsApi.md#Invoke-OktaReplaceRateLimitSettingsAdminNotifications) | **PUT** /api/v1/rate-limit-settings/admin-notifications | Replace the Rate Limit Admin Notification Settings
*OktaRateLimitSettingsApi* | [**Invoke-OktaReplaceRateLimitSettingsPerClient**](docs/OktaRateLimitSettingsApi.md#Invoke-OktaReplaceRateLimitSettingsPerClient) | **PUT** /api/v1/rate-limit-settings/per-client | Replace the Per-Client Rate Limit Settings
*OktaResourceSetApi* | [**Add-OktaMembersToBinding**](docs/OktaResourceSetApi.md#Add-OktaMembersToBinding) | **PATCH** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members | Add more Members to a binding
*OktaResourceSetApi* | [**Add-OktaResourceSetResource**](docs/OktaResourceSetApi.md#Add-OktaResourceSetResource) | **PATCH** /api/v1/iam/resource-sets/{resourceSetId}/resources | Add a Resource to a resource set
*OktaResourceSetApi* | [**New-OktaResourceSet**](docs/OktaResourceSetApi.md#New-OktaResourceSet) | **POST** /api/v1/iam/resource-sets | Create a Resource Set
*OktaResourceSetApi* | [**New-OktaResourceSetBinding**](docs/OktaResourceSetApi.md#New-OktaResourceSetBinding) | **POST** /api/v1/iam/resource-sets/{resourceSetId}/bindings | Create a Resource Set Binding
*OktaResourceSetApi* | [**Invoke-OktaDeleteBinding**](docs/OktaResourceSetApi.md#Invoke-OktaDeleteBinding) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel} | Delete a Binding
*OktaResourceSetApi* | [**Invoke-OktaDeleteResourceSet**](docs/OktaResourceSetApi.md#Invoke-OktaDeleteResourceSet) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId} | Delete a Resource Set
*OktaResourceSetApi* | [**Invoke-OktaDeleteResourceSetResource**](docs/OktaResourceSetApi.md#Invoke-OktaDeleteResourceSetResource) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/resources/{resourceId} | Delete a Resource from a resource set
*OktaResourceSetApi* | [**Get-OktaBinding**](docs/OktaResourceSetApi.md#Get-OktaBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel} | Retrieve a Binding
*OktaResourceSetApi* | [**Get-OktaMemberOfBinding**](docs/OktaResourceSetApi.md#Get-OktaMemberOfBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members/{memberId} | Retrieve a Member of a binding
*OktaResourceSetApi* | [**Get-OktaResourceSet**](docs/OktaResourceSetApi.md#Get-OktaResourceSet) | **GET** /api/v1/iam/resource-sets/{resourceSetId} | Retrieve a Resource Set
*OktaResourceSetApi* | [**Invoke-OktaListBindings**](docs/OktaResourceSetApi.md#Invoke-OktaListBindings) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings | List all Bindings
*OktaResourceSetApi* | [**Invoke-OktaListMembersOfBinding**](docs/OktaResourceSetApi.md#Invoke-OktaListMembersOfBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members | List all Members of a binding
*OktaResourceSetApi* | [**Invoke-OktaListResourceSetResources**](docs/OktaResourceSetApi.md#Invoke-OktaListResourceSetResources) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/resources | List all Resources of a resource set
*OktaResourceSetApi* | [**Invoke-OktaListResourceSets**](docs/OktaResourceSetApi.md#Invoke-OktaListResourceSets) | **GET** /api/v1/iam/resource-sets | List all Resource Sets
*OktaResourceSetApi* | [**Invoke-OktaReplaceResourceSet**](docs/OktaResourceSetApi.md#Invoke-OktaReplaceResourceSet) | **PUT** /api/v1/iam/resource-sets/{resourceSetId} | Replace a Resource Set
*OktaResourceSetApi* | [**Invoke-OktaUnassignMemberFromBinding**](docs/OktaResourceSetApi.md#Invoke-OktaUnassignMemberFromBinding) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members/{memberId} | Unassign a Member from a binding
*OktaRiskEventApi* | [**Send-OktaRiskEvents**](docs/OktaRiskEventApi.md#Send-OktaRiskEvents) | **POST** /api/v1/risk/events/ip | Send multiple Risk Events
*OktaRiskProviderApi* | [**New-OktaRiskProvider**](docs/OktaRiskProviderApi.md#New-OktaRiskProvider) | **POST** /api/v1/risk/providers | Create a Risk Provider
*OktaRiskProviderApi* | [**Invoke-OktaDeleteRiskProvider**](docs/OktaRiskProviderApi.md#Invoke-OktaDeleteRiskProvider) | **DELETE** /api/v1/risk/providers/{riskProviderId} | Delete a Risk Provider
*OktaRiskProviderApi* | [**Get-OktaRiskProvider**](docs/OktaRiskProviderApi.md#Get-OktaRiskProvider) | **GET** /api/v1/risk/providers/{riskProviderId} | Retrieve a Risk Provider
*OktaRiskProviderApi* | [**Invoke-OktaListRiskProviders**](docs/OktaRiskProviderApi.md#Invoke-OktaListRiskProviders) | **GET** /api/v1/risk/providers | List all Risk Providers
*OktaRiskProviderApi* | [**Update-OktaRiskProvider**](docs/OktaRiskProviderApi.md#Update-OktaRiskProvider) | **PUT** /api/v1/risk/providers/{riskProviderId} | Replace a Risk Provider
*OktaRoleApi* | [**Add-OktaRolePermission**](docs/OktaRoleApi.md#Add-OktaRolePermission) | **POST** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Create a Permission
*OktaRoleApi* | [**New-OktaRole**](docs/OktaRoleApi.md#New-OktaRole) | **POST** /api/v1/iam/roles | Create a Role
*OktaRoleApi* | [**Invoke-OktaDeleteRole**](docs/OktaRoleApi.md#Invoke-OktaDeleteRole) | **DELETE** /api/v1/iam/roles/{roleIdOrLabel} | Delete a Role
*OktaRoleApi* | [**Invoke-OktaDeleteRolePermission**](docs/OktaRoleApi.md#Invoke-OktaDeleteRolePermission) | **DELETE** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Delete a Permission
*OktaRoleApi* | [**Get-OktaRole**](docs/OktaRoleApi.md#Get-OktaRole) | **GET** /api/v1/iam/roles/{roleIdOrLabel} | Retrieve a Role
*OktaRoleApi* | [**Get-OktaRolePermission**](docs/OktaRoleApi.md#Get-OktaRolePermission) | **GET** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Retrieve a Permission
*OktaRoleApi* | [**Invoke-OktaListRolePermissions**](docs/OktaRoleApi.md#Invoke-OktaListRolePermissions) | **GET** /api/v1/iam/roles/{roleIdOrLabel}/permissions | List all Permissions
*OktaRoleApi* | [**Invoke-OktaListRoles**](docs/OktaRoleApi.md#Invoke-OktaListRoles) | **GET** /api/v1/iam/roles | List all Roles
*OktaRoleApi* | [**Invoke-OktaReplaceRole**](docs/OktaRoleApi.md#Invoke-OktaReplaceRole) | **PUT** /api/v1/iam/roles/{roleIdOrLabel} | Replace a Role
*OktaRoleAssignmentApi* | [**Set-OktaRoleToGroup**](docs/OktaRoleAssignmentApi.md#Set-OktaRoleToGroup) | **POST** /api/v1/groups/{groupId}/roles | Assign a Role to a Group
*OktaRoleAssignmentApi* | [**Set-OktaRoleToUser**](docs/OktaRoleAssignmentApi.md#Set-OktaRoleToUser) | **POST** /api/v1/users/{userId}/roles | Assign a Role to a User
*OktaRoleAssignmentApi* | [**Get-OktaGroupAssignedRole**](docs/OktaRoleAssignmentApi.md#Get-OktaGroupAssignedRole) | **GET** /api/v1/groups/{groupId}/roles/{roleId} | Retrieve a Role assigned to Group
*OktaRoleAssignmentApi* | [**Get-OktaUserAssignedRole**](docs/OktaRoleAssignmentApi.md#Get-OktaUserAssignedRole) | **GET** /api/v1/users/{userId}/roles/{roleId} | Retrieve a Role assigned to a User
*OktaRoleAssignmentApi* | [**Invoke-OktaListAssignedRolesForUser**](docs/OktaRoleAssignmentApi.md#Invoke-OktaListAssignedRolesForUser) | **GET** /api/v1/users/{userId}/roles | List all Roles assigned to a User
*OktaRoleAssignmentApi* | [**Invoke-OktaListGroupAssignedRoles**](docs/OktaRoleAssignmentApi.md#Invoke-OktaListGroupAssignedRoles) | **GET** /api/v1/groups/{groupId}/roles | List all Assigned Roles of Group
*OktaRoleAssignmentApi* | [**Invoke-OktaUnassignRoleFromGroup**](docs/OktaRoleAssignmentApi.md#Invoke-OktaUnassignRoleFromGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId} | Unassign a Role from a Group
*OktaRoleAssignmentApi* | [**Invoke-OktaUnassignRoleFromUser**](docs/OktaRoleAssignmentApi.md#Invoke-OktaUnassignRoleFromUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId} | Unassign a Role from a User
*OktaRoleTargetApi* | [**Add-OktaAllAppsAsTargetToRole**](docs/OktaRoleTargetApi.md#Add-OktaAllAppsAsTargetToRole) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps | Assign all Apps as Target to Role
*OktaRoleTargetApi* | [**Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup**](docs/OktaRoleTargetApi.md#Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Assign an Application Instance Target to Application Administrator Role
*OktaRoleTargetApi* | [**Add-OktaApplicationTargetToAdminRoleForUser**](docs/OktaRoleTargetApi.md#Add-OktaApplicationTargetToAdminRoleForUser) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName} | Assign an Application Target to Administrator Role
*OktaRoleTargetApi* | [**Add-OktaApplicationTargetToAdminRoleGivenToGroup**](docs/OktaRoleTargetApi.md#Add-OktaApplicationTargetToAdminRoleGivenToGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName} | Assign an Application Target to Administrator Role
*OktaRoleTargetApi* | [**Add-OktaApplicationTargetToAppAdminRoleForUser**](docs/OktaRoleTargetApi.md#Add-OktaApplicationTargetToAppAdminRoleForUser) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Assign an Application Instance Target to an Application Administrator Role
*OktaRoleTargetApi* | [**Add-OktaGroupTargetToGroupAdministratorRoleForGroup**](docs/OktaRoleTargetApi.md#Add-OktaGroupTargetToGroupAdministratorRoleForGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId} | Assign a Group Target for Group Role
*OktaRoleTargetApi* | [**Add-OktaGroupTargetToRole**](docs/OktaRoleTargetApi.md#Add-OktaGroupTargetToRole) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId} | Assign a Group Target to Role
*OktaRoleTargetApi* | [**Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup**](docs/OktaRoleTargetApi.md#Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup) | **GET** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps | List all Application Targets for an Application Administrator Role
*OktaRoleTargetApi* | [**Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser**](docs/OktaRoleTargetApi.md#Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser) | **GET** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps | List all Application Targets for Application Administrator Role
*OktaRoleTargetApi* | [**Invoke-OktaListGroupTargetsForGroupRole**](docs/OktaRoleTargetApi.md#Invoke-OktaListGroupTargetsForGroupRole) | **GET** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups | List all Group Targets for a Group Role
*OktaRoleTargetApi* | [**Invoke-OktaListGroupTargetsForRole**](docs/OktaRoleTargetApi.md#Invoke-OktaListGroupTargetsForRole) | **GET** /api/v1/users/{userId}/roles/{roleId}/targets/groups | List all Group Targets for Role
*OktaRoleTargetApi* | [**Remove-OktaApplicationTargetFromAdministratorRoleForUser**](docs/OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromAdministratorRoleForUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Unassign an Application Instance Target to Application Administrator Role
*OktaRoleTargetApi* | [**Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup**](docs/OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Delete an Application Instance Target to Application Administrator Role
*OktaRoleTargetApi* | [**Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser**](docs/OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName} | Unassign an Application Target from Application Administrator Role
*OktaRoleTargetApi* | [**Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup**](docs/OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName} | Delete an Application Target from Application Administrator Role
*OktaRoleTargetApi* | [**Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup**](docs/OktaRoleTargetApi.md#Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId} | Delete a Group Target for Group Role
*OktaRoleTargetApi* | [**Remove-OktaGroupTargetFromRole**](docs/OktaRoleTargetApi.md#Remove-OktaGroupTargetFromRole) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId} | Unassign a Group Target from Role
*OktaSchemaApi* | [**Get-OktaApplicationLayout**](docs/OktaSchemaApi.md#Get-OktaApplicationLayout) | **GET** /api/v1/meta/layouts/apps/{appName} | Retrieve the UI Layout for an Application
*OktaSchemaApi* | [**Get-OktaApplicationUserSchema**](docs/OktaSchemaApi.md#Get-OktaApplicationUserSchema) | **GET** /api/v1/meta/schemas/apps/{appInstanceId}/default | Retrieve the default Application User Schema for an Application
*OktaSchemaApi* | [**Get-OktaGroupSchema**](docs/OktaSchemaApi.md#Get-OktaGroupSchema) | **GET** /api/v1/meta/schemas/group/default | Retrieve the default Group Schema
*OktaSchemaApi* | [**Get-OktaLogStreamSchema**](docs/OktaSchemaApi.md#Get-OktaLogStreamSchema) | **GET** /api/v1/meta/schemas/logStream/{logStreamType} | Retrieve the Log Stream Schema for the schema type
*OktaSchemaApi* | [**Get-OktaUserSchema**](docs/OktaSchemaApi.md#Get-OktaUserSchema) | **GET** /api/v1/meta/schemas/user/{schemaId} | Retrieve a User Schema
*OktaSchemaApi* | [**Invoke-OktaListLogStreamSchemas**](docs/OktaSchemaApi.md#Invoke-OktaListLogStreamSchemas) | **GET** /api/v1/meta/schemas/logStream | List the Log Stream Schemas
*OktaSchemaApi* | [**Update-OktaApplicationUserProfile**](docs/OktaSchemaApi.md#Update-OktaApplicationUserProfile) | **POST** /api/v1/meta/schemas/apps/{appInstanceId}/default | Update the default Application User Schema for an Application
*OktaSchemaApi* | [**Update-OktaGroupSchema**](docs/OktaSchemaApi.md#Update-OktaGroupSchema) | **POST** /api/v1/meta/schemas/group/default | Update the default Group Schema
*OktaSchemaApi* | [**Update-OktaUserProfile**](docs/OktaSchemaApi.md#Update-OktaUserProfile) | **POST** /api/v1/meta/schemas/user/{schemaId} | Update a User Schema
*OktaSessionApi* | [**New-OktaSession**](docs/OktaSessionApi.md#New-OktaSession) | **POST** /api/v1/sessions | Create a Session with Session Token
*OktaSessionApi* | [**Stop-OktaSession**](docs/OktaSessionApi.md#Stop-OktaSession) | **DELETE** /api/v1/sessions/{sessionId} | Delete a Session
*OktaSessionApi* | [**Get-OktaSession**](docs/OktaSessionApi.md#Get-OktaSession) | **GET** /api/v1/sessions/{sessionId} | Retrieve a Session
*OktaSessionApi* | [**Invoke-OktaRefreshSession**](docs/OktaSessionApi.md#Invoke-OktaRefreshSession) | **POST** /api/v1/sessions/{sessionId}/lifecycle/refresh | Refresh a Session
*OktaSubscriptionApi* | [**Get-OktaRoleSubscriptionByNotificationType**](docs/OktaSubscriptionApi.md#Get-OktaRoleSubscriptionByNotificationType) | **GET** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType} | List all Subscriptions of a Custom Role with a specific notification type
*OktaSubscriptionApi* | [**Get-OktaUserSubscriptionByNotificationType**](docs/OktaSubscriptionApi.md#Get-OktaUserSubscriptionByNotificationType) | **GET** /api/v1/users/{userId}/subscriptions/{notificationType} | List all Subscriptions by type
*OktaSubscriptionApi* | [**Invoke-OktaListRoleSubscriptions**](docs/OktaSubscriptionApi.md#Invoke-OktaListRoleSubscriptions) | **GET** /api/v1/roles/{roleTypeOrRoleId}/subscriptions | List all Subscriptions of a Custom Role
*OktaSubscriptionApi* | [**Invoke-OktaListUserSubscriptions**](docs/OktaSubscriptionApi.md#Invoke-OktaListUserSubscriptions) | **GET** /api/v1/users/{userId}/subscriptions | List all Subscriptions
*OktaSubscriptionApi* | [**Invoke-OktaSubscribeRoleSubscriptionByNotificationType**](docs/OktaSubscriptionApi.md#Invoke-OktaSubscribeRoleSubscriptionByNotificationType) | **POST** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/subscribe | Subscribe a Custom Role to a specific notification type
*OktaSubscriptionApi* | [**Invoke-OktaSubscribeUserSubscriptionByNotificationType**](docs/OktaSubscriptionApi.md#Invoke-OktaSubscribeUserSubscriptionByNotificationType) | **POST** /api/v1/users/{userId}/subscriptions/{notificationType}/subscribe | Subscribe to a specific notification type
*OktaSubscriptionApi* | [**Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType**](docs/OktaSubscriptionApi.md#Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType) | **POST** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/unsubscribe | Unsubscribe a Custom Role from a specific notification type
*OktaSubscriptionApi* | [**Invoke-OktaUnsubscribeUserSubscriptionByNotificationType**](docs/OktaSubscriptionApi.md#Invoke-OktaUnsubscribeUserSubscriptionByNotificationType) | **POST** /api/v1/users/{userId}/subscriptions/{notificationType}/unsubscribe | Unsubscribe from a specific notification type
*OktaSystemLogApi* | [**Get-OktaLogs**](docs/OktaSystemLogApi.md#Get-OktaLogs) | **GET** /api/v1/logs | List all System Log Events
*OktaTemplateApi* | [**New-OktaSmsTemplate**](docs/OktaTemplateApi.md#New-OktaSmsTemplate) | **POST** /api/v1/templates/sms | Create an SMS Template
*OktaTemplateApi* | [**Invoke-OktaDeleteSmsTemplate**](docs/OktaTemplateApi.md#Invoke-OktaDeleteSmsTemplate) | **DELETE** /api/v1/templates/sms/{templateId} | Delete an SMS Template
*OktaTemplateApi* | [**Get-OktaSmsTemplate**](docs/OktaTemplateApi.md#Get-OktaSmsTemplate) | **GET** /api/v1/templates/sms/{templateId} | Retrieve an SMS Template
*OktaTemplateApi* | [**Invoke-OktaListSmsTemplates**](docs/OktaTemplateApi.md#Invoke-OktaListSmsTemplates) | **GET** /api/v1/templates/sms | List all SMS Templates
*OktaTemplateApi* | [**Invoke-OktaPartialUpdateSmsTemplate**](docs/OktaTemplateApi.md#Invoke-OktaPartialUpdateSmsTemplate) | **POST** /api/v1/templates/sms/{templateId} | Update an SMS Template
*OktaTemplateApi* | [**Update-OktaSmsTemplate**](docs/OktaTemplateApi.md#Update-OktaSmsTemplate) | **PUT** /api/v1/templates/sms/{templateId} | Replace an SMS Template
*OktaThreatInsightApi* | [**Get-OktaCurrentConfiguration**](docs/OktaThreatInsightApi.md#Get-OktaCurrentConfiguration) | **GET** /api/v1/threats/configuration | Retrieve the ThreatInsight Configuration
*OktaThreatInsightApi* | [**Update-OktaConfiguration**](docs/OktaThreatInsightApi.md#Update-OktaConfiguration) | **POST** /api/v1/threats/configuration | Update the ThreatInsight Configuration
*OktaTrustedOriginApi* | [**Invoke-OktaActivateOrigin**](docs/OktaTrustedOriginApi.md#Invoke-OktaActivateOrigin) | **POST** /api/v1/trustedOrigins/{trustedOriginId}/lifecycle/activate | Activate a Trusted Origin
*OktaTrustedOriginApi* | [**New-OktaOrigin**](docs/OktaTrustedOriginApi.md#New-OktaOrigin) | **POST** /api/v1/trustedOrigins | Create a Trusted Origin
*OktaTrustedOriginApi* | [**Invoke-OktaDeactivateOrigin**](docs/OktaTrustedOriginApi.md#Invoke-OktaDeactivateOrigin) | **POST** /api/v1/trustedOrigins/{trustedOriginId}/lifecycle/deactivate | Deactivate a Trusted Origin
*OktaTrustedOriginApi* | [**Invoke-OktaDeleteOrigin**](docs/OktaTrustedOriginApi.md#Invoke-OktaDeleteOrigin) | **DELETE** /api/v1/trustedOrigins/{trustedOriginId} | Delete a Trusted Origin
*OktaTrustedOriginApi* | [**Get-OktaOrigin**](docs/OktaTrustedOriginApi.md#Get-OktaOrigin) | **GET** /api/v1/trustedOrigins/{trustedOriginId} | Retrieve a Trusted Origin
*OktaTrustedOriginApi* | [**Invoke-OktaListOrigins**](docs/OktaTrustedOriginApi.md#Invoke-OktaListOrigins) | **GET** /api/v1/trustedOrigins | List all Trusted Origins
*OktaTrustedOriginApi* | [**Update-OktaOrigin**](docs/OktaTrustedOriginApi.md#Update-OktaOrigin) | **PUT** /api/v1/trustedOrigins/{trustedOriginId} | Replace a Trusted Origin
*OktaUserApi* | [**Invoke-OktaActivateUser**](docs/OktaUserApi.md#Invoke-OktaActivateUser) | **POST** /api/v1/users/{userId}/lifecycle/activate | Activate a User
*OktaUserApi* | [**Rename-OktaPassword**](docs/OktaUserApi.md#Rename-OktaPassword) | **POST** /api/v1/users/{userId}/credentials/change_password | Change Password
*OktaUserApi* | [**Rename-OktaRecoveryQuestion**](docs/OktaUserApi.md#Rename-OktaRecoveryQuestion) | **POST** /api/v1/users/{userId}/credentials/change_recovery_question | Change Recovery Question
*OktaUserApi* | [**Clear-OktaUserSessions**](docs/OktaUserApi.md#Clear-OktaUserSessions) | **DELETE** /api/v1/users/{userId}/sessions | Delete all User Sessions
*OktaUserApi* | [**New-OktaUser**](docs/OktaUserApi.md#New-OktaUser) | **POST** /api/v1/users | Create a User
*OktaUserApi* | [**Invoke-OktaDeactivateOrDeleteUser**](docs/OktaUserApi.md#Invoke-OktaDeactivateOrDeleteUser) | **DELETE** /api/v1/users/{userId} | Delete a User
*OktaUserApi* | [**Invoke-OktaDeactivateUser**](docs/OktaUserApi.md#Invoke-OktaDeactivateUser) | **POST** /api/v1/users/{userId}/lifecycle/deactivate | Deactivate a User
*OktaUserApi* | [**Invoke-OktaExpirePassword**](docs/OktaUserApi.md#Invoke-OktaExpirePassword) | **POST** /api/v1/users/{userId}/lifecycle/expire_password | Expire Password
*OktaUserApi* | [**Invoke-OktaExpirePasswordAndGetTemporaryPassword**](docs/OktaUserApi.md#Invoke-OktaExpirePasswordAndGetTemporaryPassword) | **POST** /api/v1/users/{userId}/lifecycle/expire_password_with_temp_password | Expire Password and Set Temporary Password
*OktaUserApi* | [**Invoke-OktaForgotPassword**](docs/OktaUserApi.md#Invoke-OktaForgotPassword) | **POST** /api/v1/users/{userId}/credentials/forgot_password | Initiate Forgot Password
*OktaUserApi* | [**Invoke-OktaForgotPasswordSetNewPassword**](docs/OktaUserApi.md#Invoke-OktaForgotPasswordSetNewPassword) | **POST** /api/v1/users/{userId}/credentials/forgot_password_recovery_question | Reset Password with Recovery Question
*OktaUserApi* | [**Get-OktaLinkedObjectsForUser**](docs/OktaUserApi.md#Get-OktaLinkedObjectsForUser) | **GET** /api/v1/users/{userId}/linkedObjects/{relationshipName} | List all Linked Objects
*OktaUserApi* | [**Get-OktaRefreshTokenForUserAndClient**](docs/OktaUserApi.md#Get-OktaRefreshTokenForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId} | Retrieve a Refresh Token for a Client
*OktaUserApi* | [**Get-OktaUser**](docs/OktaUserApi.md#Get-OktaUser) | **GET** /api/v1/users/{userId} | Retrieve a User
*OktaUserApi* | [**Get-OktaUserGrant**](docs/OktaUserApi.md#Get-OktaUserGrant) | **GET** /api/v1/users/{userId}/grants/{grantId} | Retrieve a User Grant
*OktaUserApi* | [**Invoke-OktaListAppLinks**](docs/OktaUserApi.md#Invoke-OktaListAppLinks) | **GET** /api/v1/users/{userId}/appLinks | List all Assigned Application Links
*OktaUserApi* | [**Invoke-OktaListGrantsForUserAndClient**](docs/OktaUserApi.md#Invoke-OktaListGrantsForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/grants | List all Grants for a Client
*OktaUserApi* | [**Invoke-OktaListRefreshTokensForUserAndClient**](docs/OktaUserApi.md#Invoke-OktaListRefreshTokensForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/tokens | List all Refresh Tokens for a Client
*OktaUserApi* | [**Invoke-OktaListUserClients**](docs/OktaUserApi.md#Invoke-OktaListUserClients) | **GET** /api/v1/users/{userId}/clients | List all Clients
*OktaUserApi* | [**Invoke-OktaListUserGrants**](docs/OktaUserApi.md#Invoke-OktaListUserGrants) | **GET** /api/v1/users/{userId}/grants | List all User Grants
*OktaUserApi* | [**Invoke-OktaListUserGroups**](docs/OktaUserApi.md#Invoke-OktaListUserGroups) | **GET** /api/v1/users/{userId}/groups | List all Groups
*OktaUserApi* | [**Invoke-OktaListUserIdentityProviders**](docs/OktaUserApi.md#Invoke-OktaListUserIdentityProviders) | **GET** /api/v1/users/{userId}/idps | List all Identity Providers
*OktaUserApi* | [**Invoke-OktaListUsers**](docs/OktaUserApi.md#Invoke-OktaListUsers) | **GET** /api/v1/users | List all Users
*OktaUserApi* | [**Invoke-OktaPartialUpdateUser**](docs/OktaUserApi.md#Invoke-OktaPartialUpdateUser) | **POST** /api/v1/users/{userId} | Update a User
*OktaUserApi* | [**Invoke-OktaReactivateUser**](docs/OktaUserApi.md#Invoke-OktaReactivateUser) | **POST** /api/v1/users/{userId}/lifecycle/reactivate | Reactivate a User
*OktaUserApi* | [**Remove-OktaLinkedObjectForUser**](docs/OktaUserApi.md#Remove-OktaLinkedObjectForUser) | **DELETE** /api/v1/users/{userId}/linkedObjects/{relationshipName} | Delete a Linked Object
*OktaUserApi* | [**Reset-OktaFactors**](docs/OktaUserApi.md#Reset-OktaFactors) | **POST** /api/v1/users/{userId}/lifecycle/reset_factors | Reset all Factors
*OktaUserApi* | [**Reset-OktaPassword**](docs/OktaUserApi.md#Reset-OktaPassword) | **POST** /api/v1/users/{userId}/lifecycle/reset_password | Reset Password
*OktaUserApi* | [**Revoke-OktaGrantsForUserAndClient**](docs/OktaUserApi.md#Revoke-OktaGrantsForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/grants | Revoke all Grants for a Client
*OktaUserApi* | [**Revoke-OktaTokenForUserAndClient**](docs/OktaUserApi.md#Revoke-OktaTokenForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId} | Revoke a Token for a Client
*OktaUserApi* | [**Revoke-OktaTokensForUserAndClient**](docs/OktaUserApi.md#Revoke-OktaTokensForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/tokens | Revoke all Refresh Tokens for a Client
*OktaUserApi* | [**Revoke-OktaUserGrant**](docs/OktaUserApi.md#Revoke-OktaUserGrant) | **DELETE** /api/v1/users/{userId}/grants/{grantId} | Revoke a User Grant
*OktaUserApi* | [**Revoke-OktaUserGrants**](docs/OktaUserApi.md#Revoke-OktaUserGrants) | **DELETE** /api/v1/users/{userId}/grants | Revoke all User Grants
*OktaUserApi* | [**Set-OktaLinkedObjectForUser**](docs/OktaUserApi.md#Set-OktaLinkedObjectForUser) | **PUT** /api/v1/users/{associatedUserId}/linkedObjects/{primaryRelationshipName}/{primaryUserId} | Create a Linked Object for two User
*OktaUserApi* | [**Suspend-OktaUser**](docs/OktaUserApi.md#Suspend-OktaUser) | **POST** /api/v1/users/{userId}/lifecycle/suspend | Suspend a User
*OktaUserApi* | [**Unlock-OktaUser**](docs/OktaUserApi.md#Unlock-OktaUser) | **POST** /api/v1/users/{userId}/lifecycle/unlock | Unlock a User
*OktaUserApi* | [**Invoke-OktaUnsuspendUser**](docs/OktaUserApi.md#Invoke-OktaUnsuspendUser) | **POST** /api/v1/users/{userId}/lifecycle/unsuspend | Unsuspend a User
*OktaUserApi* | [**Update-OktaUser**](docs/OktaUserApi.md#Update-OktaUser) | **PUT** /api/v1/users/{userId} | Replace a User
*OktaUserFactorApi* | [**Invoke-OktaActivateFactor**](docs/OktaUserFactorApi.md#Invoke-OktaActivateFactor) | **POST** /api/v1/users/{userId}/factors/{factorId}/lifecycle/activate | Activate a Factor
*OktaUserFactorApi* | [**Invoke-OktaDeleteFactor**](docs/OktaUserFactorApi.md#Invoke-OktaDeleteFactor) | **DELETE** /api/v1/users/{userId}/factors/{factorId} | Delete a Factor
*OktaUserFactorApi* | [**Invoke-OktaEnrollFactor**](docs/OktaUserFactorApi.md#Invoke-OktaEnrollFactor) | **POST** /api/v1/users/{userId}/factors | Enroll a Factor
*OktaUserFactorApi* | [**Get-OktaFactor**](docs/OktaUserFactorApi.md#Get-OktaFactor) | **GET** /api/v1/users/{userId}/factors/{factorId} | Retrieve a Factor
*OktaUserFactorApi* | [**Get-OktaFactorTransactionStatus**](docs/OktaUserFactorApi.md#Get-OktaFactorTransactionStatus) | **GET** /api/v1/users/{userId}/factors/{factorId}/transactions/{transactionId} | Retrieve a Factor Transaction Status
*OktaUserFactorApi* | [**Invoke-OktaListFactors**](docs/OktaUserFactorApi.md#Invoke-OktaListFactors) | **GET** /api/v1/users/{userId}/factors | List all Factors
*OktaUserFactorApi* | [**Invoke-OktaListSupportedFactors**](docs/OktaUserFactorApi.md#Invoke-OktaListSupportedFactors) | **GET** /api/v1/users/{userId}/factors/catalog | List all Supported Factors
*OktaUserFactorApi* | [**Invoke-OktaListSupportedSecurityQuestions**](docs/OktaUserFactorApi.md#Invoke-OktaListSupportedSecurityQuestions) | **GET** /api/v1/users/{userId}/factors/questions | List all Supported Security Questions
*OktaUserFactorApi* | [**Invoke-OktaResendEnrollFactor**](docs/OktaUserFactorApi.md#Invoke-OktaResendEnrollFactor) | **POST** /api/v1/users/{userId}/factors/{factorId}/resend | Resend factor enrollment
*OktaUserFactorApi* | [**Test-OktaFactor**](docs/OktaUserFactorApi.md#Test-OktaFactor) | **POST** /api/v1/users/{userId}/factors/{factorId}/verify | Verify an MFA Factor
*OktaUserTypeApi* | [**New-OktaUserType**](docs/OktaUserTypeApi.md#New-OktaUserType) | **POST** /api/v1/meta/types/user | Create a User Type
*OktaUserTypeApi* | [**Invoke-OktaDeleteUserType**](docs/OktaUserTypeApi.md#Invoke-OktaDeleteUserType) | **DELETE** /api/v1/meta/types/user/{typeId} | Delete a User Type
*OktaUserTypeApi* | [**Get-OktaUserType**](docs/OktaUserTypeApi.md#Get-OktaUserType) | **GET** /api/v1/meta/types/user/{typeId} | Retrieve a User Type
*OktaUserTypeApi* | [**Invoke-OktaListUserTypes**](docs/OktaUserTypeApi.md#Invoke-OktaListUserTypes) | **GET** /api/v1/meta/types/user | List all User Types
*OktaUserTypeApi* | [**Invoke-OktaReplaceUserType**](docs/OktaUserTypeApi.md#Invoke-OktaReplaceUserType) | **PUT** /api/v1/meta/types/user/{typeId} | Replace a User Type
*OktaUserTypeApi* | [**Update-OktaUserType**](docs/OktaUserTypeApi.md#Update-OktaUserType) | **POST** /api/v1/meta/types/user/{typeId} | Update a User Type


# Documentation for Models

 - [Okta.PowerShell\Model.APNSConfiguration](docs/APNSConfiguration.md)
 - [Okta.PowerShell\Model.APNSPushProvider](docs/APNSPushProvider.md)
 - [Okta.PowerShell\Model.APNSPushProviderAllOf](docs/APNSPushProviderAllOf.md)
 - [Okta.PowerShell\Model.AccessPolicy](docs/AccessPolicy.md)
 - [Okta.PowerShell\Model.AccessPolicyAllOf](docs/AccessPolicyAllOf.md)
 - [Okta.PowerShell\Model.AccessPolicyConstraint](docs/AccessPolicyConstraint.md)
 - [Okta.PowerShell\Model.AccessPolicyConstraints](docs/AccessPolicyConstraints.md)
 - [Okta.PowerShell\Model.AccessPolicyRule](docs/AccessPolicyRule.md)
 - [Okta.PowerShell\Model.AccessPolicyRuleActions](docs/AccessPolicyRuleActions.md)
 - [Okta.PowerShell\Model.AccessPolicyRuleActionsAllOf](docs/AccessPolicyRuleActionsAllOf.md)
 - [Okta.PowerShell\Model.AccessPolicyRuleAllOf](docs/AccessPolicyRuleAllOf.md)
 - [Okta.PowerShell\Model.AccessPolicyRuleApplicationSignOn](docs/AccessPolicyRuleApplicationSignOn.md)
 - [Okta.PowerShell\Model.AccessPolicyRuleConditions](docs/AccessPolicyRuleConditions.md)
 - [Okta.PowerShell\Model.AccessPolicyRuleConditionsAllOf](docs/AccessPolicyRuleConditionsAllOf.md)
 - [Okta.PowerShell\Model.AccessPolicyRuleCustomCondition](docs/AccessPolicyRuleCustomCondition.md)
 - [Okta.PowerShell\Model.AcsEndpoint](docs/AcsEndpoint.md)
 - [Okta.PowerShell\Model.ActivateFactorRequest](docs/ActivateFactorRequest.md)
 - [Okta.PowerShell\Model.Agent](docs/Agent.md)
 - [Okta.PowerShell\Model.AgentPool](docs/AgentPool.md)
 - [Okta.PowerShell\Model.AgentPoolUpdate](docs/AgentPoolUpdate.md)
 - [Okta.PowerShell\Model.AgentPoolUpdateSetting](docs/AgentPoolUpdateSetting.md)
 - [Okta.PowerShell\Model.AgentType](docs/AgentType.md)
 - [Okta.PowerShell\Model.AgentUpdateInstanceStatus](docs/AgentUpdateInstanceStatus.md)
 - [Okta.PowerShell\Model.AgentUpdateJobStatus](docs/AgentUpdateJobStatus.md)
 - [Okta.PowerShell\Model.AllowedForEnum](docs/AllowedForEnum.md)
 - [Okta.PowerShell\Model.ApiToken](docs/ApiToken.md)
 - [Okta.PowerShell\Model.ApiTokenLink](docs/ApiTokenLink.md)
 - [Okta.PowerShell\Model.AppAndInstanceConditionEvaluatorAppOrInstance](docs/AppAndInstanceConditionEvaluatorAppOrInstance.md)
 - [Okta.PowerShell\Model.AppAndInstancePolicyRuleCondition](docs/AppAndInstancePolicyRuleCondition.md)
 - [Okta.PowerShell\Model.AppAndInstanceType](docs/AppAndInstanceType.md)
 - [Okta.PowerShell\Model.AppInstancePolicyRuleCondition](docs/AppInstancePolicyRuleCondition.md)
 - [Okta.PowerShell\Model.AppLink](docs/AppLink.md)
 - [Okta.PowerShell\Model.AppUser](docs/AppUser.md)
 - [Okta.PowerShell\Model.AppUserCredentials](docs/AppUserCredentials.md)
 - [Okta.PowerShell\Model.AppUserPasswordCredential](docs/AppUserPasswordCredential.md)
 - [Okta.PowerShell\Model.Application](docs/Application.md)
 - [Okta.PowerShell\Model.ApplicationAccessibility](docs/ApplicationAccessibility.md)
 - [Okta.PowerShell\Model.ApplicationCredentials](docs/ApplicationCredentials.md)
 - [Okta.PowerShell\Model.ApplicationCredentialsOAuthClient](docs/ApplicationCredentialsOAuthClient.md)
 - [Okta.PowerShell\Model.ApplicationCredentialsScheme](docs/ApplicationCredentialsScheme.md)
 - [Okta.PowerShell\Model.ApplicationCredentialsSigning](docs/ApplicationCredentialsSigning.md)
 - [Okta.PowerShell\Model.ApplicationCredentialsSigningUse](docs/ApplicationCredentialsSigningUse.md)
 - [Okta.PowerShell\Model.ApplicationCredentialsUsernameTemplate](docs/ApplicationCredentialsUsernameTemplate.md)
 - [Okta.PowerShell\Model.ApplicationFeature](docs/ApplicationFeature.md)
 - [Okta.PowerShell\Model.ApplicationGroupAssignment](docs/ApplicationGroupAssignment.md)
 - [Okta.PowerShell\Model.ApplicationLayout](docs/ApplicationLayout.md)
 - [Okta.PowerShell\Model.ApplicationLayoutRule](docs/ApplicationLayoutRule.md)
 - [Okta.PowerShell\Model.ApplicationLayoutRuleCondition](docs/ApplicationLayoutRuleCondition.md)
 - [Okta.PowerShell\Model.ApplicationLicensing](docs/ApplicationLicensing.md)
 - [Okta.PowerShell\Model.ApplicationLifecycleStatus](docs/ApplicationLifecycleStatus.md)
 - [Okta.PowerShell\Model.ApplicationLinks](docs/ApplicationLinks.md)
 - [Okta.PowerShell\Model.ApplicationSettings](docs/ApplicationSettings.md)
 - [Okta.PowerShell\Model.ApplicationSettingsNotes](docs/ApplicationSettingsNotes.md)
 - [Okta.PowerShell\Model.ApplicationSettingsNotifications](docs/ApplicationSettingsNotifications.md)
 - [Okta.PowerShell\Model.ApplicationSettingsNotificationsVpn](docs/ApplicationSettingsNotificationsVpn.md)
 - [Okta.PowerShell\Model.ApplicationSettingsNotificationsVpnNetwork](docs/ApplicationSettingsNotificationsVpnNetwork.md)
 - [Okta.PowerShell\Model.ApplicationSignOnMode](docs/ApplicationSignOnMode.md)
 - [Okta.PowerShell\Model.ApplicationVisibility](docs/ApplicationVisibility.md)
 - [Okta.PowerShell\Model.ApplicationVisibilityHide](docs/ApplicationVisibilityHide.md)
 - [Okta.PowerShell\Model.AssignRoleRequest](docs/AssignRoleRequest.md)
 - [Okta.PowerShell\Model.AuthenticationProvider](docs/AuthenticationProvider.md)
 - [Okta.PowerShell\Model.AuthenticationProviderType](docs/AuthenticationProviderType.md)
 - [Okta.PowerShell\Model.Authenticator](docs/Authenticator.md)
 - [Okta.PowerShell\Model.AuthenticatorProvider](docs/AuthenticatorProvider.md)
 - [Okta.PowerShell\Model.AuthenticatorProviderConfiguration](docs/AuthenticatorProviderConfiguration.md)
 - [Okta.PowerShell\Model.AuthenticatorProviderConfigurationUserNameTemplate](docs/AuthenticatorProviderConfigurationUserNameTemplate.md)
 - [Okta.PowerShell\Model.AuthenticatorSettings](docs/AuthenticatorSettings.md)
 - [Okta.PowerShell\Model.AuthenticatorStatus](docs/AuthenticatorStatus.md)
 - [Okta.PowerShell\Model.AuthenticatorType](docs/AuthenticatorType.md)
 - [Okta.PowerShell\Model.AuthorizationServer](docs/AuthorizationServer.md)
 - [Okta.PowerShell\Model.AuthorizationServerCredentials](docs/AuthorizationServerCredentials.md)
 - [Okta.PowerShell\Model.AuthorizationServerCredentialsRotationMode](docs/AuthorizationServerCredentialsRotationMode.md)
 - [Okta.PowerShell\Model.AuthorizationServerCredentialsSigningConfig](docs/AuthorizationServerCredentialsSigningConfig.md)
 - [Okta.PowerShell\Model.AuthorizationServerCredentialsUse](docs/AuthorizationServerCredentialsUse.md)
 - [Okta.PowerShell\Model.AuthorizationServerPolicy](docs/AuthorizationServerPolicy.md)
 - [Okta.PowerShell\Model.AuthorizationServerPolicyRule](docs/AuthorizationServerPolicyRule.md)
 - [Okta.PowerShell\Model.AuthorizationServerPolicyRuleActions](docs/AuthorizationServerPolicyRuleActions.md)
 - [Okta.PowerShell\Model.AuthorizationServerPolicyRuleActionsAllOf](docs/AuthorizationServerPolicyRuleActionsAllOf.md)
 - [Okta.PowerShell\Model.AuthorizationServerPolicyRuleAllOf](docs/AuthorizationServerPolicyRuleAllOf.md)
 - [Okta.PowerShell\Model.AuthorizationServerPolicyRuleConditions](docs/AuthorizationServerPolicyRuleConditions.md)
 - [Okta.PowerShell\Model.AuthorizationServerPolicyRuleConditionsAllOf](docs/AuthorizationServerPolicyRuleConditionsAllOf.md)
 - [Okta.PowerShell\Model.AutoLoginApplication](docs/AutoLoginApplication.md)
 - [Okta.PowerShell\Model.AutoLoginApplicationAllOf](docs/AutoLoginApplicationAllOf.md)
 - [Okta.PowerShell\Model.AutoLoginApplicationSettings](docs/AutoLoginApplicationSettings.md)
 - [Okta.PowerShell\Model.AutoLoginApplicationSettingsAllOf](docs/AutoLoginApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.AutoLoginApplicationSettingsSignOn](docs/AutoLoginApplicationSettingsSignOn.md)
 - [Okta.PowerShell\Model.AutoUpdateSchedule](docs/AutoUpdateSchedule.md)
 - [Okta.PowerShell\Model.AwsRegion](docs/AwsRegion.md)
 - [Okta.PowerShell\Model.BaseEmailDomain](docs/BaseEmailDomain.md)
 - [Okta.PowerShell\Model.BasicApplicationSettings](docs/BasicApplicationSettings.md)
 - [Okta.PowerShell\Model.BasicApplicationSettingsAllOf](docs/BasicApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.BasicApplicationSettingsApplication](docs/BasicApplicationSettingsApplication.md)
 - [Okta.PowerShell\Model.BasicAuthApplication](docs/BasicAuthApplication.md)
 - [Okta.PowerShell\Model.BasicAuthApplicationAllOf](docs/BasicAuthApplicationAllOf.md)
 - [Okta.PowerShell\Model.BeforeScheduledActionPolicyRuleCondition](docs/BeforeScheduledActionPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.BehaviorDetectionRuleSettingsBasedOnDeviceVelocityInKilometersPerHour](docs/BehaviorDetectionRuleSettingsBasedOnDeviceVelocityInKilometersPerHour.md)
 - [Okta.PowerShell\Model.BehaviorDetectionRuleSettingsBasedOnEventHistory](docs/BehaviorDetectionRuleSettingsBasedOnEventHistory.md)
 - [Okta.PowerShell\Model.BehaviorRule](docs/BehaviorRule.md)
 - [Okta.PowerShell\Model.BehaviorRuleAnomalousDevice](docs/BehaviorRuleAnomalousDevice.md)
 - [Okta.PowerShell\Model.BehaviorRuleAnomalousDeviceAllOf](docs/BehaviorRuleAnomalousDeviceAllOf.md)
 - [Okta.PowerShell\Model.BehaviorRuleAnomalousIP](docs/BehaviorRuleAnomalousIP.md)
 - [Okta.PowerShell\Model.BehaviorRuleAnomalousIPAllOf](docs/BehaviorRuleAnomalousIPAllOf.md)
 - [Okta.PowerShell\Model.BehaviorRuleAnomalousLocation](docs/BehaviorRuleAnomalousLocation.md)
 - [Okta.PowerShell\Model.BehaviorRuleAnomalousLocationAllOf](docs/BehaviorRuleAnomalousLocationAllOf.md)
 - [Okta.PowerShell\Model.BehaviorRuleSettingsAnomalousDevice](docs/BehaviorRuleSettingsAnomalousDevice.md)
 - [Okta.PowerShell\Model.BehaviorRuleSettingsAnomalousIP](docs/BehaviorRuleSettingsAnomalousIP.md)
 - [Okta.PowerShell\Model.BehaviorRuleSettingsAnomalousIPAllOf](docs/BehaviorRuleSettingsAnomalousIPAllOf.md)
 - [Okta.PowerShell\Model.BehaviorRuleSettingsAnomalousLocation](docs/BehaviorRuleSettingsAnomalousLocation.md)
 - [Okta.PowerShell\Model.BehaviorRuleSettingsAnomalousLocationAllOf](docs/BehaviorRuleSettingsAnomalousLocationAllOf.md)
 - [Okta.PowerShell\Model.BehaviorRuleSettingsHistoryBased](docs/BehaviorRuleSettingsHistoryBased.md)
 - [Okta.PowerShell\Model.BehaviorRuleSettingsVelocity](docs/BehaviorRuleSettingsVelocity.md)
 - [Okta.PowerShell\Model.BehaviorRuleType](docs/BehaviorRuleType.md)
 - [Okta.PowerShell\Model.BehaviorRuleVelocity](docs/BehaviorRuleVelocity.md)
 - [Okta.PowerShell\Model.BehaviorRuleVelocityAllOf](docs/BehaviorRuleVelocityAllOf.md)
 - [Okta.PowerShell\Model.BookmarkApplication](docs/BookmarkApplication.md)
 - [Okta.PowerShell\Model.BookmarkApplicationAllOf](docs/BookmarkApplicationAllOf.md)
 - [Okta.PowerShell\Model.BookmarkApplicationSettings](docs/BookmarkApplicationSettings.md)
 - [Okta.PowerShell\Model.BookmarkApplicationSettingsAllOf](docs/BookmarkApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.BookmarkApplicationSettingsApplication](docs/BookmarkApplicationSettingsApplication.md)
 - [Okta.PowerShell\Model.BouncesRemoveListError](docs/BouncesRemoveListError.md)
 - [Okta.PowerShell\Model.BouncesRemoveListObj](docs/BouncesRemoveListObj.md)
 - [Okta.PowerShell\Model.BouncesRemoveListResult](docs/BouncesRemoveListResult.md)
 - [Okta.PowerShell\Model.Brand](docs/Brand.md)
 - [Okta.PowerShell\Model.BrandDefaultApp](docs/BrandDefaultApp.md)
 - [Okta.PowerShell\Model.BrandDomain](docs/BrandDomain.md)
 - [Okta.PowerShell\Model.BrandDomainLinks](docs/BrandDomainLinks.md)
 - [Okta.PowerShell\Model.BrandLinks](docs/BrandLinks.md)
 - [Okta.PowerShell\Model.BrandRequest](docs/BrandRequest.md)
 - [Okta.PowerShell\Model.BrowserPluginApplication](docs/BrowserPluginApplication.md)
 - [Okta.PowerShell\Model.BrowserPluginApplicationAllOf](docs/BrowserPluginApplicationAllOf.md)
 - [Okta.PowerShell\Model.CAPTCHAInstance](docs/CAPTCHAInstance.md)
 - [Okta.PowerShell\Model.CAPTCHAType](docs/CAPTCHAType.md)
 - [Okta.PowerShell\Model.CallUserFactor](docs/CallUserFactor.md)
 - [Okta.PowerShell\Model.CallUserFactorAllOf](docs/CallUserFactorAllOf.md)
 - [Okta.PowerShell\Model.CallUserFactorProfile](docs/CallUserFactorProfile.md)
 - [Okta.PowerShell\Model.CapabilitiesCreateObject](docs/CapabilitiesCreateObject.md)
 - [Okta.PowerShell\Model.CapabilitiesObject](docs/CapabilitiesObject.md)
 - [Okta.PowerShell\Model.CapabilitiesUpdateObject](docs/CapabilitiesUpdateObject.md)
 - [Okta.PowerShell\Model.CatalogApplication](docs/CatalogApplication.md)
 - [Okta.PowerShell\Model.CatalogApplicationStatus](docs/CatalogApplicationStatus.md)
 - [Okta.PowerShell\Model.ChangeEnum](docs/ChangeEnum.md)
 - [Okta.PowerShell\Model.ChangePasswordRequest](docs/ChangePasswordRequest.md)
 - [Okta.PowerShell\Model.ChannelBinding](docs/ChannelBinding.md)
 - [Okta.PowerShell\Model.ClientPolicyCondition](docs/ClientPolicyCondition.md)
 - [Okta.PowerShell\Model.Compliance](docs/Compliance.md)
 - [Okta.PowerShell\Model.ContextPolicyRuleCondition](docs/ContextPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.ContextPolicyRuleConditionAllOf](docs/ContextPolicyRuleConditionAllOf.md)
 - [Okta.PowerShell\Model.CreateBrandDomainRequest](docs/CreateBrandDomainRequest.md)
 - [Okta.PowerShell\Model.CreateBrandRequest](docs/CreateBrandRequest.md)
 - [Okta.PowerShell\Model.CreateIamRoleRequest](docs/CreateIamRoleRequest.md)
 - [Okta.PowerShell\Model.CreateResourceSetRequest](docs/CreateResourceSetRequest.md)
 - [Okta.PowerShell\Model.CreateSessionRequest](docs/CreateSessionRequest.md)
 - [Okta.PowerShell\Model.CreateUserRequest](docs/CreateUserRequest.md)
 - [Okta.PowerShell\Model.Csr](docs/Csr.md)
 - [Okta.PowerShell\Model.CsrMetadata](docs/CsrMetadata.md)
 - [Okta.PowerShell\Model.CsrMetadataSubject](docs/CsrMetadataSubject.md)
 - [Okta.PowerShell\Model.CsrMetadataSubjectAltNames](docs/CsrMetadataSubjectAltNames.md)
 - [Okta.PowerShell\Model.CustomHotpUserFactor](docs/CustomHotpUserFactor.md)
 - [Okta.PowerShell\Model.CustomHotpUserFactorAllOf](docs/CustomHotpUserFactorAllOf.md)
 - [Okta.PowerShell\Model.CustomHotpUserFactorProfile](docs/CustomHotpUserFactorProfile.md)
 - [Okta.PowerShell\Model.CustomizablePage](docs/CustomizablePage.md)
 - [Okta.PowerShell\Model.DNSRecord](docs/DNSRecord.md)
 - [Okta.PowerShell\Model.DNSRecordType](docs/DNSRecordType.md)
 - [Okta.PowerShell\Model.Device](docs/Device.md)
 - [Okta.PowerShell\Model.DeviceAccessPolicyRuleCondition](docs/DeviceAccessPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.DeviceAccessPolicyRuleConditionAllOf](docs/DeviceAccessPolicyRuleConditionAllOf.md)
 - [Okta.PowerShell\Model.DeviceAssurance](docs/DeviceAssurance.md)
 - [Okta.PowerShell\Model.DeviceAssuranceDiskEncryptionType](docs/DeviceAssuranceDiskEncryptionType.md)
 - [Okta.PowerShell\Model.DeviceAssuranceScreenLockType](docs/DeviceAssuranceScreenLockType.md)
 - [Okta.PowerShell\Model.DeviceDisplayName](docs/DeviceDisplayName.md)
 - [Okta.PowerShell\Model.DeviceLinks](docs/DeviceLinks.md)
 - [Okta.PowerShell\Model.DevicePlatform](docs/DevicePlatform.md)
 - [Okta.PowerShell\Model.DevicePolicyMDMFramework](docs/DevicePolicyMDMFramework.md)
 - [Okta.PowerShell\Model.DevicePolicyPlatformType](docs/DevicePolicyPlatformType.md)
 - [Okta.PowerShell\Model.DevicePolicyRuleCondition](docs/DevicePolicyRuleCondition.md)
 - [Okta.PowerShell\Model.DevicePolicyRuleConditionPlatform](docs/DevicePolicyRuleConditionPlatform.md)
 - [Okta.PowerShell\Model.DevicePolicyTrustLevel](docs/DevicePolicyTrustLevel.md)
 - [Okta.PowerShell\Model.DeviceProfile](docs/DeviceProfile.md)
 - [Okta.PowerShell\Model.DeviceStatus](docs/DeviceStatus.md)
 - [Okta.PowerShell\Model.DiskEncryptionType](docs/DiskEncryptionType.md)
 - [Okta.PowerShell\Model.Domain](docs/Domain.md)
 - [Okta.PowerShell\Model.DomainCertificate](docs/DomainCertificate.md)
 - [Okta.PowerShell\Model.DomainCertificateMetadata](docs/DomainCertificateMetadata.md)
 - [Okta.PowerShell\Model.DomainCertificateSourceType](docs/DomainCertificateSourceType.md)
 - [Okta.PowerShell\Model.DomainCertificateType](docs/DomainCertificateType.md)
 - [Okta.PowerShell\Model.DomainLinks](docs/DomainLinks.md)
 - [Okta.PowerShell\Model.DomainListResponse](docs/DomainListResponse.md)
 - [Okta.PowerShell\Model.DomainResponse](docs/DomainResponse.md)
 - [Okta.PowerShell\Model.DomainValidationStatus](docs/DomainValidationStatus.md)
 - [Okta.PowerShell\Model.Duration](docs/Duration.md)
 - [Okta.PowerShell\Model.EmailContent](docs/EmailContent.md)
 - [Okta.PowerShell\Model.EmailCustomization](docs/EmailCustomization.md)
 - [Okta.PowerShell\Model.EmailCustomizationAllOf](docs/EmailCustomizationAllOf.md)
 - [Okta.PowerShell\Model.EmailCustomizationAllOfLinks](docs/EmailCustomizationAllOfLinks.md)
 - [Okta.PowerShell\Model.EmailDefaultContent](docs/EmailDefaultContent.md)
 - [Okta.PowerShell\Model.EmailDefaultContentAllOf](docs/EmailDefaultContentAllOf.md)
 - [Okta.PowerShell\Model.EmailDefaultContentAllOfLinks](docs/EmailDefaultContentAllOfLinks.md)
 - [Okta.PowerShell\Model.EmailDomain](docs/EmailDomain.md)
 - [Okta.PowerShell\Model.EmailDomainListResponse](docs/EmailDomainListResponse.md)
 - [Okta.PowerShell\Model.EmailDomainResponse](docs/EmailDomainResponse.md)
 - [Okta.PowerShell\Model.EmailDomainStatus](docs/EmailDomainStatus.md)
 - [Okta.PowerShell\Model.EmailPreview](docs/EmailPreview.md)
 - [Okta.PowerShell\Model.EmailPreviewLinks](docs/EmailPreviewLinks.md)
 - [Okta.PowerShell\Model.EmailSettings](docs/EmailSettings.md)
 - [Okta.PowerShell\Model.EmailTemplate](docs/EmailTemplate.md)
 - [Okta.PowerShell\Model.EmailTemplateEmbedded](docs/EmailTemplateEmbedded.md)
 - [Okta.PowerShell\Model.EmailTemplateLinks](docs/EmailTemplateLinks.md)
 - [Okta.PowerShell\Model.EmailTemplateTouchPointVariant](docs/EmailTemplateTouchPointVariant.md)
 - [Okta.PowerShell\Model.EmailUserFactor](docs/EmailUserFactor.md)
 - [Okta.PowerShell\Model.EmailUserFactorAllOf](docs/EmailUserFactorAllOf.md)
 - [Okta.PowerShell\Model.EmailUserFactorProfile](docs/EmailUserFactorProfile.md)
 - [Okta.PowerShell\Model.EnabledStatus](docs/EnabledStatus.md)
 - [Okta.PowerShell\Model.EndUserDashboardTouchPointVariant](docs/EndUserDashboardTouchPointVariant.md)
 - [Okta.PowerShell\Model.ErrorErrorCausesInner](docs/ErrorErrorCausesInner.md)
 - [Okta.PowerShell\Model.ErrorPageTouchPointVariant](docs/ErrorPageTouchPointVariant.md)
 - [Okta.PowerShell\Model.EventHook](docs/EventHook.md)
 - [Okta.PowerShell\Model.EventHookChannel](docs/EventHookChannel.md)
 - [Okta.PowerShell\Model.EventHookChannelConfig](docs/EventHookChannelConfig.md)
 - [Okta.PowerShell\Model.EventHookChannelConfigAuthScheme](docs/EventHookChannelConfigAuthScheme.md)
 - [Okta.PowerShell\Model.EventHookChannelConfigAuthSchemeType](docs/EventHookChannelConfigAuthSchemeType.md)
 - [Okta.PowerShell\Model.EventHookChannelConfigHeader](docs/EventHookChannelConfigHeader.md)
 - [Okta.PowerShell\Model.EventHookChannelType](docs/EventHookChannelType.md)
 - [Okta.PowerShell\Model.EventHookVerificationStatus](docs/EventHookVerificationStatus.md)
 - [Okta.PowerShell\Model.EventSubscriptionType](docs/EventSubscriptionType.md)
 - [Okta.PowerShell\Model.EventSubscriptions](docs/EventSubscriptions.md)
 - [Okta.PowerShell\Model.FCMConfiguration](docs/FCMConfiguration.md)
 - [Okta.PowerShell\Model.FCMPushProvider](docs/FCMPushProvider.md)
 - [Okta.PowerShell\Model.FCMPushProviderAllOf](docs/FCMPushProviderAllOf.md)
 - [Okta.PowerShell\Model.FactorProvider](docs/FactorProvider.md)
 - [Okta.PowerShell\Model.FactorResultType](docs/FactorResultType.md)
 - [Okta.PowerShell\Model.FactorStatus](docs/FactorStatus.md)
 - [Okta.PowerShell\Model.FactorType](docs/FactorType.md)
 - [Okta.PowerShell\Model.Feature](docs/Feature.md)
 - [Okta.PowerShell\Model.FeatureStage](docs/FeatureStage.md)
 - [Okta.PowerShell\Model.FeatureStageState](docs/FeatureStageState.md)
 - [Okta.PowerShell\Model.FeatureStageValue](docs/FeatureStageValue.md)
 - [Okta.PowerShell\Model.FeatureType](docs/FeatureType.md)
 - [Okta.PowerShell\Model.FipsEnum](docs/FipsEnum.md)
 - [Okta.PowerShell\Model.ForgotPasswordResponse](docs/ForgotPasswordResponse.md)
 - [Okta.PowerShell\Model.GrantOrTokenStatus](docs/GrantOrTokenStatus.md)
 - [Okta.PowerShell\Model.GrantTypePolicyRuleCondition](docs/GrantTypePolicyRuleCondition.md)
 - [Okta.PowerShell\Model.Group](docs/Group.md)
 - [Okta.PowerShell\Model.GroupCondition](docs/GroupCondition.md)
 - [Okta.PowerShell\Model.GroupLinks](docs/GroupLinks.md)
 - [Okta.PowerShell\Model.GroupOwner](docs/GroupOwner.md)
 - [Okta.PowerShell\Model.GroupOwnerOriginType](docs/GroupOwnerOriginType.md)
 - [Okta.PowerShell\Model.GroupOwnerType](docs/GroupOwnerType.md)
 - [Okta.PowerShell\Model.GroupPolicyRuleCondition](docs/GroupPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.GroupProfile](docs/GroupProfile.md)
 - [Okta.PowerShell\Model.GroupRule](docs/GroupRule.md)
 - [Okta.PowerShell\Model.GroupRuleAction](docs/GroupRuleAction.md)
 - [Okta.PowerShell\Model.GroupRuleConditions](docs/GroupRuleConditions.md)
 - [Okta.PowerShell\Model.GroupRuleExpression](docs/GroupRuleExpression.md)
 - [Okta.PowerShell\Model.GroupRuleGroupAssignment](docs/GroupRuleGroupAssignment.md)
 - [Okta.PowerShell\Model.GroupRuleGroupCondition](docs/GroupRuleGroupCondition.md)
 - [Okta.PowerShell\Model.GroupRulePeopleCondition](docs/GroupRulePeopleCondition.md)
 - [Okta.PowerShell\Model.GroupRuleStatus](docs/GroupRuleStatus.md)
 - [Okta.PowerShell\Model.GroupRuleUserCondition](docs/GroupRuleUserCondition.md)
 - [Okta.PowerShell\Model.GroupSchema](docs/GroupSchema.md)
 - [Okta.PowerShell\Model.GroupSchemaAttribute](docs/GroupSchemaAttribute.md)
 - [Okta.PowerShell\Model.GroupSchemaBase](docs/GroupSchemaBase.md)
 - [Okta.PowerShell\Model.GroupSchemaBaseProperties](docs/GroupSchemaBaseProperties.md)
 - [Okta.PowerShell\Model.GroupSchemaCustom](docs/GroupSchemaCustom.md)
 - [Okta.PowerShell\Model.GroupSchemaDefinitions](docs/GroupSchemaDefinitions.md)
 - [Okta.PowerShell\Model.GroupType](docs/GroupType.md)
 - [Okta.PowerShell\Model.HardwareUserFactor](docs/HardwareUserFactor.md)
 - [Okta.PowerShell\Model.HardwareUserFactorAllOf](docs/HardwareUserFactorAllOf.md)
 - [Okta.PowerShell\Model.HardwareUserFactorProfile](docs/HardwareUserFactorProfile.md)
 - [Okta.PowerShell\Model.HookKey](docs/HookKey.md)
 - [Okta.PowerShell\Model.HostedPage](docs/HostedPage.md)
 - [Okta.PowerShell\Model.HostedPageType](docs/HostedPageType.md)
 - [Okta.PowerShell\Model.HrefObject](docs/HrefObject.md)
 - [Okta.PowerShell\Model.HrefObjectHints](docs/HrefObjectHints.md)
 - [Okta.PowerShell\Model.HrefObjectSelfLink](docs/HrefObjectSelfLink.md)
 - [Okta.PowerShell\Model.HttpMethod](docs/HttpMethod.md)
 - [Okta.PowerShell\Model.IamRole](docs/IamRole.md)
 - [Okta.PowerShell\Model.IamRoleLinks](docs/IamRoleLinks.md)
 - [Okta.PowerShell\Model.IamRoleLinksAllOf](docs/IamRoleLinksAllOf.md)
 - [Okta.PowerShell\Model.IamRoles](docs/IamRoles.md)
 - [Okta.PowerShell\Model.IamRolesLinks](docs/IamRolesLinks.md)
 - [Okta.PowerShell\Model.IdentityProvider](docs/IdentityProvider.md)
 - [Okta.PowerShell\Model.IdentityProviderApplicationUser](docs/IdentityProviderApplicationUser.md)
 - [Okta.PowerShell\Model.IdentityProviderCredentials](docs/IdentityProviderCredentials.md)
 - [Okta.PowerShell\Model.IdentityProviderCredentialsClient](docs/IdentityProviderCredentialsClient.md)
 - [Okta.PowerShell\Model.IdentityProviderCredentialsSigning](docs/IdentityProviderCredentialsSigning.md)
 - [Okta.PowerShell\Model.IdentityProviderCredentialsTrust](docs/IdentityProviderCredentialsTrust.md)
 - [Okta.PowerShell\Model.IdentityProviderCredentialsTrustRevocation](docs/IdentityProviderCredentialsTrustRevocation.md)
 - [Okta.PowerShell\Model.IdentityProviderPolicy](docs/IdentityProviderPolicy.md)
 - [Okta.PowerShell\Model.IdentityProviderPolicyAllOf](docs/IdentityProviderPolicyAllOf.md)
 - [Okta.PowerShell\Model.IdentityProviderPolicyProvider](docs/IdentityProviderPolicyProvider.md)
 - [Okta.PowerShell\Model.IdentityProviderPolicyRuleCondition](docs/IdentityProviderPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.IdentityProviderType](docs/IdentityProviderType.md)
 - [Okta.PowerShell\Model.IdpPolicyRuleAction](docs/IdpPolicyRuleAction.md)
 - [Okta.PowerShell\Model.IdpPolicyRuleActionProvider](docs/IdpPolicyRuleActionProvider.md)
 - [Okta.PowerShell\Model.IframeEmbedScopeAllowedApps](docs/IframeEmbedScopeAllowedApps.md)
 - [Okta.PowerShell\Model.ImageUploadResponse](docs/ImageUploadResponse.md)
 - [Okta.PowerShell\Model.InactivityPolicyRuleCondition](docs/InactivityPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.InlineHook](docs/InlineHook.md)
 - [Okta.PowerShell\Model.InlineHookChannel](docs/InlineHookChannel.md)
 - [Okta.PowerShell\Model.InlineHookChannelConfig](docs/InlineHookChannelConfig.md)
 - [Okta.PowerShell\Model.InlineHookChannelConfigAuthScheme](docs/InlineHookChannelConfigAuthScheme.md)
 - [Okta.PowerShell\Model.InlineHookChannelConfigHeaders](docs/InlineHookChannelConfigHeaders.md)
 - [Okta.PowerShell\Model.InlineHookChannelHttp](docs/InlineHookChannelHttp.md)
 - [Okta.PowerShell\Model.InlineHookChannelHttpAllOf](docs/InlineHookChannelHttpAllOf.md)
 - [Okta.PowerShell\Model.InlineHookChannelOAuth](docs/InlineHookChannelOAuth.md)
 - [Okta.PowerShell\Model.InlineHookChannelOAuthAllOf](docs/InlineHookChannelOAuthAllOf.md)
 - [Okta.PowerShell\Model.InlineHookChannelType](docs/InlineHookChannelType.md)
 - [Okta.PowerShell\Model.InlineHookOAuthBasicConfig](docs/InlineHookOAuthBasicConfig.md)
 - [Okta.PowerShell\Model.InlineHookOAuthChannelConfig](docs/InlineHookOAuthChannelConfig.md)
 - [Okta.PowerShell\Model.InlineHookOAuthClientSecretConfig](docs/InlineHookOAuthClientSecretConfig.md)
 - [Okta.PowerShell\Model.InlineHookOAuthPrivateKeyJwtConfig](docs/InlineHookOAuthPrivateKeyJwtConfig.md)
 - [Okta.PowerShell\Model.InlineHookResponse](docs/InlineHookResponse.md)
 - [Okta.PowerShell\Model.InlineHookResponseCommandValue](docs/InlineHookResponseCommandValue.md)
 - [Okta.PowerShell\Model.InlineHookResponseCommands](docs/InlineHookResponseCommands.md)
 - [Okta.PowerShell\Model.InlineHookStatus](docs/InlineHookStatus.md)
 - [Okta.PowerShell\Model.InlineHookType](docs/InlineHookType.md)
 - [Okta.PowerShell\Model.IssuerMode](docs/IssuerMode.md)
 - [Okta.PowerShell\Model.JsonWebKey](docs/JsonWebKey.md)
 - [Okta.PowerShell\Model.JwkUse](docs/JwkUse.md)
 - [Okta.PowerShell\Model.JwkUseType](docs/JwkUseType.md)
 - [Okta.PowerShell\Model.KeyRequest](docs/KeyRequest.md)
 - [Okta.PowerShell\Model.KnowledgeConstraint](docs/KnowledgeConstraint.md)
 - [Okta.PowerShell\Model.LifecycleCreateSettingObject](docs/LifecycleCreateSettingObject.md)
 - [Okta.PowerShell\Model.LifecycleDeactivateSettingObject](docs/LifecycleDeactivateSettingObject.md)
 - [Okta.PowerShell\Model.LifecycleExpirationPolicyRuleCondition](docs/LifecycleExpirationPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.LifecycleStatus](docs/LifecycleStatus.md)
 - [Okta.PowerShell\Model.LinkedObject](docs/LinkedObject.md)
 - [Okta.PowerShell\Model.LinkedObjectDetails](docs/LinkedObjectDetails.md)
 - [Okta.PowerShell\Model.LinkedObjectDetailsType](docs/LinkedObjectDetailsType.md)
 - [Okta.PowerShell\Model.LinksSelf](docs/LinksSelf.md)
 - [Okta.PowerShell\Model.LoadingPageTouchPointVariant](docs/LoadingPageTouchPointVariant.md)
 - [Okta.PowerShell\Model.LocationGranularity](docs/LocationGranularity.md)
 - [Okta.PowerShell\Model.LogActor](docs/LogActor.md)
 - [Okta.PowerShell\Model.LogAuthenticationContext](docs/LogAuthenticationContext.md)
 - [Okta.PowerShell\Model.LogAuthenticationProvider](docs/LogAuthenticationProvider.md)
 - [Okta.PowerShell\Model.LogClient](docs/LogClient.md)
 - [Okta.PowerShell\Model.LogCredentialProvider](docs/LogCredentialProvider.md)
 - [Okta.PowerShell\Model.LogCredentialType](docs/LogCredentialType.md)
 - [Okta.PowerShell\Model.LogDebugContext](docs/LogDebugContext.md)
 - [Okta.PowerShell\Model.LogEvent](docs/LogEvent.md)
 - [Okta.PowerShell\Model.LogGeographicalContext](docs/LogGeographicalContext.md)
 - [Okta.PowerShell\Model.LogGeolocation](docs/LogGeolocation.md)
 - [Okta.PowerShell\Model.LogIpAddress](docs/LogIpAddress.md)
 - [Okta.PowerShell\Model.LogIssuer](docs/LogIssuer.md)
 - [Okta.PowerShell\Model.LogOutcome](docs/LogOutcome.md)
 - [Okta.PowerShell\Model.LogRequest](docs/LogRequest.md)
 - [Okta.PowerShell\Model.LogSecurityContext](docs/LogSecurityContext.md)
 - [Okta.PowerShell\Model.LogSeverity](docs/LogSeverity.md)
 - [Okta.PowerShell\Model.LogStream](docs/LogStream.md)
 - [Okta.PowerShell\Model.LogStreamAws](docs/LogStreamAws.md)
 - [Okta.PowerShell\Model.LogStreamAwsAllOf](docs/LogStreamAwsAllOf.md)
 - [Okta.PowerShell\Model.LogStreamLinks](docs/LogStreamLinks.md)
 - [Okta.PowerShell\Model.LogStreamSchema](docs/LogStreamSchema.md)
 - [Okta.PowerShell\Model.LogStreamSettingsAws](docs/LogStreamSettingsAws.md)
 - [Okta.PowerShell\Model.LogStreamSettingsAwsAllOf](docs/LogStreamSettingsAwsAllOf.md)
 - [Okta.PowerShell\Model.LogStreamSettingsSplunk](docs/LogStreamSettingsSplunk.md)
 - [Okta.PowerShell\Model.LogStreamSettingsSplunkAllOf](docs/LogStreamSettingsSplunkAllOf.md)
 - [Okta.PowerShell\Model.LogStreamSplunk](docs/LogStreamSplunk.md)
 - [Okta.PowerShell\Model.LogStreamSplunkAllOf](docs/LogStreamSplunkAllOf.md)
 - [Okta.PowerShell\Model.LogStreamType](docs/LogStreamType.md)
 - [Okta.PowerShell\Model.LogTarget](docs/LogTarget.md)
 - [Okta.PowerShell\Model.LogTransaction](docs/LogTransaction.md)
 - [Okta.PowerShell\Model.LogUserAgent](docs/LogUserAgent.md)
 - [Okta.PowerShell\Model.MDMEnrollmentPolicyEnrollment](docs/MDMEnrollmentPolicyEnrollment.md)
 - [Okta.PowerShell\Model.MDMEnrollmentPolicyRuleCondition](docs/MDMEnrollmentPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.ModelError](docs/ModelError.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicy](docs/MultifactorEnrollmentPolicy.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicyAllOf](docs/MultifactorEnrollmentPolicyAllOf.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicyAuthenticatorSettings](docs/MultifactorEnrollmentPolicyAuthenticatorSettings.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicyAuthenticatorSettingsEnroll](docs/MultifactorEnrollmentPolicyAuthenticatorSettingsEnroll.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicyAuthenticatorStatus](docs/MultifactorEnrollmentPolicyAuthenticatorStatus.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicyAuthenticatorType](docs/MultifactorEnrollmentPolicyAuthenticatorType.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicySettings](docs/MultifactorEnrollmentPolicySettings.md)
 - [Okta.PowerShell\Model.MultifactorEnrollmentPolicySettingsType](docs/MultifactorEnrollmentPolicySettingsType.md)
 - [Okta.PowerShell\Model.NetworkZone](docs/NetworkZone.md)
 - [Okta.PowerShell\Model.NetworkZoneAddress](docs/NetworkZoneAddress.md)
 - [Okta.PowerShell\Model.NetworkZoneAddressType](docs/NetworkZoneAddressType.md)
 - [Okta.PowerShell\Model.NetworkZoneLocation](docs/NetworkZoneLocation.md)
 - [Okta.PowerShell\Model.NetworkZoneStatus](docs/NetworkZoneStatus.md)
 - [Okta.PowerShell\Model.NetworkZoneType](docs/NetworkZoneType.md)
 - [Okta.PowerShell\Model.NetworkZoneUsage](docs/NetworkZoneUsage.md)
 - [Okta.PowerShell\Model.NotificationType](docs/NotificationType.md)
 - [Okta.PowerShell\Model.OAuth2Actor](docs/OAuth2Actor.md)
 - [Okta.PowerShell\Model.OAuth2Claim](docs/OAuth2Claim.md)
 - [Okta.PowerShell\Model.OAuth2ClaimConditions](docs/OAuth2ClaimConditions.md)
 - [Okta.PowerShell\Model.OAuth2ClaimGroupFilterType](docs/OAuth2ClaimGroupFilterType.md)
 - [Okta.PowerShell\Model.OAuth2ClaimType](docs/OAuth2ClaimType.md)
 - [Okta.PowerShell\Model.OAuth2ClaimValueType](docs/OAuth2ClaimValueType.md)
 - [Okta.PowerShell\Model.OAuth2Client](docs/OAuth2Client.md)
 - [Okta.PowerShell\Model.OAuth2RefreshToken](docs/OAuth2RefreshToken.md)
 - [Okta.PowerShell\Model.OAuth2Scope](docs/OAuth2Scope.md)
 - [Okta.PowerShell\Model.OAuth2ScopeConsentGrant](docs/OAuth2ScopeConsentGrant.md)
 - [Okta.PowerShell\Model.OAuth2ScopeConsentGrantSource](docs/OAuth2ScopeConsentGrantSource.md)
 - [Okta.PowerShell\Model.OAuth2ScopeConsentType](docs/OAuth2ScopeConsentType.md)
 - [Okta.PowerShell\Model.OAuth2ScopeMetadataPublish](docs/OAuth2ScopeMetadataPublish.md)
 - [Okta.PowerShell\Model.OAuth2ScopesMediationPolicyRuleCondition](docs/OAuth2ScopesMediationPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.OAuth2Token](docs/OAuth2Token.md)
 - [Okta.PowerShell\Model.OAuthApplicationCredentials](docs/OAuthApplicationCredentials.md)
 - [Okta.PowerShell\Model.OAuthApplicationCredentialsAllOf](docs/OAuthApplicationCredentialsAllOf.md)
 - [Okta.PowerShell\Model.OAuthEndpointAuthenticationMethod](docs/OAuthEndpointAuthenticationMethod.md)
 - [Okta.PowerShell\Model.OAuthGrantType](docs/OAuthGrantType.md)
 - [Okta.PowerShell\Model.OAuthResponseType](docs/OAuthResponseType.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicy](docs/OktaSignOnPolicy.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyAllOf](docs/OktaSignOnPolicyAllOf.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyConditions](docs/OktaSignOnPolicyConditions.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyConditionsAllOf](docs/OktaSignOnPolicyConditionsAllOf.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyFactorPromptMode](docs/OktaSignOnPolicyFactorPromptMode.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRule](docs/OktaSignOnPolicyRule.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRuleActions](docs/OktaSignOnPolicyRuleActions.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRuleActionsAllOf](docs/OktaSignOnPolicyRuleActionsAllOf.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRuleAllOf](docs/OktaSignOnPolicyRuleAllOf.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRuleConditions](docs/OktaSignOnPolicyRuleConditions.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRuleConditionsAllOf](docs/OktaSignOnPolicyRuleConditionsAllOf.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRuleSignonActions](docs/OktaSignOnPolicyRuleSignonActions.md)
 - [Okta.PowerShell\Model.OktaSignOnPolicyRuleSignonSessionActions](docs/OktaSignOnPolicyRuleSignonSessionActions.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplication](docs/OpenIdConnectApplication.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationAllOf](docs/OpenIdConnectApplicationAllOf.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationConsentMethod](docs/OpenIdConnectApplicationConsentMethod.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationIdpInitiatedLogin](docs/OpenIdConnectApplicationIdpInitiatedLogin.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationIssuerMode](docs/OpenIdConnectApplicationIssuerMode.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationSettings](docs/OpenIdConnectApplicationSettings.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationSettingsAllOf](docs/OpenIdConnectApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationSettingsClient](docs/OpenIdConnectApplicationSettingsClient.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationSettingsClientKeys](docs/OpenIdConnectApplicationSettingsClientKeys.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationSettingsRefreshToken](docs/OpenIdConnectApplicationSettingsRefreshToken.md)
 - [Okta.PowerShell\Model.OpenIdConnectApplicationType](docs/OpenIdConnectApplicationType.md)
 - [Okta.PowerShell\Model.OpenIdConnectRefreshTokenRotationType](docs/OpenIdConnectRefreshTokenRotationType.md)
 - [Okta.PowerShell\Model.OperationalStatus](docs/OperationalStatus.md)
 - [Okta.PowerShell\Model.OrgContactType](docs/OrgContactType.md)
 - [Okta.PowerShell\Model.OrgContactTypeObj](docs/OrgContactTypeObj.md)
 - [Okta.PowerShell\Model.OrgContactUser](docs/OrgContactUser.md)
 - [Okta.PowerShell\Model.OrgOktaCommunicationSetting](docs/OrgOktaCommunicationSetting.md)
 - [Okta.PowerShell\Model.OrgOktaSupportSetting](docs/OrgOktaSupportSetting.md)
 - [Okta.PowerShell\Model.OrgOktaSupportSettingsObj](docs/OrgOktaSupportSettingsObj.md)
 - [Okta.PowerShell\Model.OrgPreferences](docs/OrgPreferences.md)
 - [Okta.PowerShell\Model.OrgSetting](docs/OrgSetting.md)
 - [Okta.PowerShell\Model.PageRoot](docs/PageRoot.md)
 - [Okta.PowerShell\Model.PageRootEmbedded](docs/PageRootEmbedded.md)
 - [Okta.PowerShell\Model.PageRootLinks](docs/PageRootLinks.md)
 - [Okta.PowerShell\Model.PasswordCredential](docs/PasswordCredential.md)
 - [Okta.PowerShell\Model.PasswordCredentialHash](docs/PasswordCredentialHash.md)
 - [Okta.PowerShell\Model.PasswordCredentialHashAlgorithm](docs/PasswordCredentialHashAlgorithm.md)
 - [Okta.PowerShell\Model.PasswordCredentialHook](docs/PasswordCredentialHook.md)
 - [Okta.PowerShell\Model.PasswordDictionary](docs/PasswordDictionary.md)
 - [Okta.PowerShell\Model.PasswordDictionaryCommon](docs/PasswordDictionaryCommon.md)
 - [Okta.PowerShell\Model.PasswordExpirationPolicyRuleCondition](docs/PasswordExpirationPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.PasswordPolicy](docs/PasswordPolicy.md)
 - [Okta.PowerShell\Model.PasswordPolicyAllOf](docs/PasswordPolicyAllOf.md)
 - [Okta.PowerShell\Model.PasswordPolicyAuthenticationProviderCondition](docs/PasswordPolicyAuthenticationProviderCondition.md)
 - [Okta.PowerShell\Model.PasswordPolicyAuthenticationProviderType](docs/PasswordPolicyAuthenticationProviderType.md)
 - [Okta.PowerShell\Model.PasswordPolicyConditions](docs/PasswordPolicyConditions.md)
 - [Okta.PowerShell\Model.PasswordPolicyConditionsAllOf](docs/PasswordPolicyConditionsAllOf.md)
 - [Okta.PowerShell\Model.PasswordPolicyDelegationSettings](docs/PasswordPolicyDelegationSettings.md)
 - [Okta.PowerShell\Model.PasswordPolicyDelegationSettingsOptions](docs/PasswordPolicyDelegationSettingsOptions.md)
 - [Okta.PowerShell\Model.PasswordPolicyPasswordSettings](docs/PasswordPolicyPasswordSettings.md)
 - [Okta.PowerShell\Model.PasswordPolicyPasswordSettingsAge](docs/PasswordPolicyPasswordSettingsAge.md)
 - [Okta.PowerShell\Model.PasswordPolicyPasswordSettingsComplexity](docs/PasswordPolicyPasswordSettingsComplexity.md)
 - [Okta.PowerShell\Model.PasswordPolicyPasswordSettingsLockout](docs/PasswordPolicyPasswordSettingsLockout.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryEmail](docs/PasswordPolicyRecoveryEmail.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryEmailProperties](docs/PasswordPolicyRecoveryEmailProperties.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryEmailRecoveryToken](docs/PasswordPolicyRecoveryEmailRecoveryToken.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryFactorSettings](docs/PasswordPolicyRecoveryFactorSettings.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryFactors](docs/PasswordPolicyRecoveryFactors.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryQuestion](docs/PasswordPolicyRecoveryQuestion.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryQuestionComplexity](docs/PasswordPolicyRecoveryQuestionComplexity.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoveryQuestionProperties](docs/PasswordPolicyRecoveryQuestionProperties.md)
 - [Okta.PowerShell\Model.PasswordPolicyRecoverySettings](docs/PasswordPolicyRecoverySettings.md)
 - [Okta.PowerShell\Model.PasswordPolicyRule](docs/PasswordPolicyRule.md)
 - [Okta.PowerShell\Model.PasswordPolicyRuleAction](docs/PasswordPolicyRuleAction.md)
 - [Okta.PowerShell\Model.PasswordPolicyRuleActions](docs/PasswordPolicyRuleActions.md)
 - [Okta.PowerShell\Model.PasswordPolicyRuleActionsAllOf](docs/PasswordPolicyRuleActionsAllOf.md)
 - [Okta.PowerShell\Model.PasswordPolicyRuleAllOf](docs/PasswordPolicyRuleAllOf.md)
 - [Okta.PowerShell\Model.PasswordPolicyRuleConditions](docs/PasswordPolicyRuleConditions.md)
 - [Okta.PowerShell\Model.PasswordPolicyRuleConditionsAllOf](docs/PasswordPolicyRuleConditionsAllOf.md)
 - [Okta.PowerShell\Model.PasswordPolicySettings](docs/PasswordPolicySettings.md)
 - [Okta.PowerShell\Model.PasswordSettingObject](docs/PasswordSettingObject.md)
 - [Okta.PowerShell\Model.PerClientRateLimitMode](docs/PerClientRateLimitMode.md)
 - [Okta.PowerShell\Model.PerClientRateLimitSettings](docs/PerClientRateLimitSettings.md)
 - [Okta.PowerShell\Model.PerClientRateLimitSettingsUseCaseModeOverrides](docs/PerClientRateLimitSettingsUseCaseModeOverrides.md)
 - [Okta.PowerShell\Model.Permission](docs/Permission.md)
 - [Okta.PowerShell\Model.PermissionLinks](docs/PermissionLinks.md)
 - [Okta.PowerShell\Model.Permissions](docs/Permissions.md)
 - [Okta.PowerShell\Model.PipelineType](docs/PipelineType.md)
 - [Okta.PowerShell\Model.Platform](docs/Platform.md)
 - [Okta.PowerShell\Model.PlatformConditionEvaluatorPlatform](docs/PlatformConditionEvaluatorPlatform.md)
 - [Okta.PowerShell\Model.PlatformConditionEvaluatorPlatformOperatingSystem](docs/PlatformConditionEvaluatorPlatformOperatingSystem.md)
 - [Okta.PowerShell\Model.PlatformConditionEvaluatorPlatformOperatingSystemVersion](docs/PlatformConditionEvaluatorPlatformOperatingSystemVersion.md)
 - [Okta.PowerShell\Model.PlatformConditionOperatingSystemVersionMatchType](docs/PlatformConditionOperatingSystemVersionMatchType.md)
 - [Okta.PowerShell\Model.PlatformPolicyRuleCondition](docs/PlatformPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.Policy](docs/Policy.md)
 - [Okta.PowerShell\Model.PolicyAccess](docs/PolicyAccess.md)
 - [Okta.PowerShell\Model.PolicyAccountLink](docs/PolicyAccountLink.md)
 - [Okta.PowerShell\Model.PolicyAccountLinkAction](docs/PolicyAccountLinkAction.md)
 - [Okta.PowerShell\Model.PolicyAccountLinkFilter](docs/PolicyAccountLinkFilter.md)
 - [Okta.PowerShell\Model.PolicyAccountLinkFilterGroups](docs/PolicyAccountLinkFilterGroups.md)
 - [Okta.PowerShell\Model.PolicyNetworkCondition](docs/PolicyNetworkCondition.md)
 - [Okta.PowerShell\Model.PolicyNetworkConnection](docs/PolicyNetworkConnection.md)
 - [Okta.PowerShell\Model.PolicyPeopleCondition](docs/PolicyPeopleCondition.md)
 - [Okta.PowerShell\Model.PolicyPlatformOperatingSystemType](docs/PolicyPlatformOperatingSystemType.md)
 - [Okta.PowerShell\Model.PolicyPlatformType](docs/PolicyPlatformType.md)
 - [Okta.PowerShell\Model.PolicyRule](docs/PolicyRule.md)
 - [Okta.PowerShell\Model.PolicyRuleActions](docs/PolicyRuleActions.md)
 - [Okta.PowerShell\Model.PolicyRuleActionsEnroll](docs/PolicyRuleActionsEnroll.md)
 - [Okta.PowerShell\Model.PolicyRuleActionsEnrollSelf](docs/PolicyRuleActionsEnrollSelf.md)
 - [Okta.PowerShell\Model.PolicyRuleAuthContextCondition](docs/PolicyRuleAuthContextCondition.md)
 - [Okta.PowerShell\Model.PolicyRuleAuthContextType](docs/PolicyRuleAuthContextType.md)
 - [Okta.PowerShell\Model.PolicyRuleConditions](docs/PolicyRuleConditions.md)
 - [Okta.PowerShell\Model.PolicyRuleType](docs/PolicyRuleType.md)
 - [Okta.PowerShell\Model.PolicySubject](docs/PolicySubject.md)
 - [Okta.PowerShell\Model.PolicySubjectMatchType](docs/PolicySubjectMatchType.md)
 - [Okta.PowerShell\Model.PolicyType](docs/PolicyType.md)
 - [Okta.PowerShell\Model.PolicyUserNameTemplate](docs/PolicyUserNameTemplate.md)
 - [Okta.PowerShell\Model.PolicyUserStatus](docs/PolicyUserStatus.md)
 - [Okta.PowerShell\Model.PossessionConstraint](docs/PossessionConstraint.md)
 - [Okta.PowerShell\Model.PossessionConstraintAllOf](docs/PossessionConstraintAllOf.md)
 - [Okta.PowerShell\Model.PreRegistrationInlineHook](docs/PreRegistrationInlineHook.md)
 - [Okta.PowerShell\Model.PrincipalRateLimitEntity](docs/PrincipalRateLimitEntity.md)
 - [Okta.PowerShell\Model.PrincipalType](docs/PrincipalType.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicy](docs/ProfileEnrollmentPolicy.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicyRule](docs/ProfileEnrollmentPolicyRule.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicyRuleAction](docs/ProfileEnrollmentPolicyRuleAction.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicyRuleActions](docs/ProfileEnrollmentPolicyRuleActions.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicyRuleActionsAllOf](docs/ProfileEnrollmentPolicyRuleActionsAllOf.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicyRuleActivationRequirement](docs/ProfileEnrollmentPolicyRuleActivationRequirement.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicyRuleAllOf](docs/ProfileEnrollmentPolicyRuleAllOf.md)
 - [Okta.PowerShell\Model.ProfileEnrollmentPolicyRuleProfileAttribute](docs/ProfileEnrollmentPolicyRuleProfileAttribute.md)
 - [Okta.PowerShell\Model.ProfileMapping](docs/ProfileMapping.md)
 - [Okta.PowerShell\Model.ProfileMappingProperty](docs/ProfileMappingProperty.md)
 - [Okta.PowerShell\Model.ProfileMappingPropertyPushStatus](docs/ProfileMappingPropertyPushStatus.md)
 - [Okta.PowerShell\Model.ProfileMappingSource](docs/ProfileMappingSource.md)
 - [Okta.PowerShell\Model.ProfileSettingObject](docs/ProfileSettingObject.md)
 - [Okta.PowerShell\Model.Protocol](docs/Protocol.md)
 - [Okta.PowerShell\Model.ProtocolAlgorithmType](docs/ProtocolAlgorithmType.md)
 - [Okta.PowerShell\Model.ProtocolAlgorithmTypeSignature](docs/ProtocolAlgorithmTypeSignature.md)
 - [Okta.PowerShell\Model.ProtocolAlgorithmTypeSignatureScope](docs/ProtocolAlgorithmTypeSignatureScope.md)
 - [Okta.PowerShell\Model.ProtocolAlgorithms](docs/ProtocolAlgorithms.md)
 - [Okta.PowerShell\Model.ProtocolEndpoint](docs/ProtocolEndpoint.md)
 - [Okta.PowerShell\Model.ProtocolEndpointBinding](docs/ProtocolEndpointBinding.md)
 - [Okta.PowerShell\Model.ProtocolEndpointType](docs/ProtocolEndpointType.md)
 - [Okta.PowerShell\Model.ProtocolEndpoints](docs/ProtocolEndpoints.md)
 - [Okta.PowerShell\Model.ProtocolRelayState](docs/ProtocolRelayState.md)
 - [Okta.PowerShell\Model.ProtocolRelayStateFormat](docs/ProtocolRelayStateFormat.md)
 - [Okta.PowerShell\Model.ProtocolSettings](docs/ProtocolSettings.md)
 - [Okta.PowerShell\Model.ProtocolType](docs/ProtocolType.md)
 - [Okta.PowerShell\Model.ProviderType](docs/ProviderType.md)
 - [Okta.PowerShell\Model.Provisioning](docs/Provisioning.md)
 - [Okta.PowerShell\Model.ProvisioningAction](docs/ProvisioningAction.md)
 - [Okta.PowerShell\Model.ProvisioningConditions](docs/ProvisioningConditions.md)
 - [Okta.PowerShell\Model.ProvisioningConnection](docs/ProvisioningConnection.md)
 - [Okta.PowerShell\Model.ProvisioningConnectionAuthScheme](docs/ProvisioningConnectionAuthScheme.md)
 - [Okta.PowerShell\Model.ProvisioningConnectionProfile](docs/ProvisioningConnectionProfile.md)
 - [Okta.PowerShell\Model.ProvisioningConnectionRequest](docs/ProvisioningConnectionRequest.md)
 - [Okta.PowerShell\Model.ProvisioningConnectionStatus](docs/ProvisioningConnectionStatus.md)
 - [Okta.PowerShell\Model.ProvisioningDeprovisionedAction](docs/ProvisioningDeprovisionedAction.md)
 - [Okta.PowerShell\Model.ProvisioningDeprovisionedCondition](docs/ProvisioningDeprovisionedCondition.md)
 - [Okta.PowerShell\Model.ProvisioningGroups](docs/ProvisioningGroups.md)
 - [Okta.PowerShell\Model.ProvisioningGroupsAction](docs/ProvisioningGroupsAction.md)
 - [Okta.PowerShell\Model.ProvisioningSuspendedAction](docs/ProvisioningSuspendedAction.md)
 - [Okta.PowerShell\Model.ProvisioningSuspendedCondition](docs/ProvisioningSuspendedCondition.md)
 - [Okta.PowerShell\Model.PushProvider](docs/PushProvider.md)
 - [Okta.PowerShell\Model.PushUserFactor](docs/PushUserFactor.md)
 - [Okta.PowerShell\Model.PushUserFactorAllOf](docs/PushUserFactorAllOf.md)
 - [Okta.PowerShell\Model.PushUserFactorProfile](docs/PushUserFactorProfile.md)
 - [Okta.PowerShell\Model.RateLimitAdminNotifications](docs/RateLimitAdminNotifications.md)
 - [Okta.PowerShell\Model.RecoveryQuestionCredential](docs/RecoveryQuestionCredential.md)
 - [Okta.PowerShell\Model.ReleaseChannel](docs/ReleaseChannel.md)
 - [Okta.PowerShell\Model.RequiredEnum](docs/RequiredEnum.md)
 - [Okta.PowerShell\Model.ResetPasswordToken](docs/ResetPasswordToken.md)
 - [Okta.PowerShell\Model.ResourceSet](docs/ResourceSet.md)
 - [Okta.PowerShell\Model.ResourceSetBindingAddMembersRequest](docs/ResourceSetBindingAddMembersRequest.md)
 - [Okta.PowerShell\Model.ResourceSetBindingCreateRequest](docs/ResourceSetBindingCreateRequest.md)
 - [Okta.PowerShell\Model.ResourceSetBindingMember](docs/ResourceSetBindingMember.md)
 - [Okta.PowerShell\Model.ResourceSetBindingMembers](docs/ResourceSetBindingMembers.md)
 - [Okta.PowerShell\Model.ResourceSetBindingMembersLinks](docs/ResourceSetBindingMembersLinks.md)
 - [Okta.PowerShell\Model.ResourceSetBindingResponse](docs/ResourceSetBindingResponse.md)
 - [Okta.PowerShell\Model.ResourceSetBindingResponseLinks](docs/ResourceSetBindingResponseLinks.md)
 - [Okta.PowerShell\Model.ResourceSetBindingRole](docs/ResourceSetBindingRole.md)
 - [Okta.PowerShell\Model.ResourceSetBindingRoleLinks](docs/ResourceSetBindingRoleLinks.md)
 - [Okta.PowerShell\Model.ResourceSetBindings](docs/ResourceSetBindings.md)
 - [Okta.PowerShell\Model.ResourceSetLinks](docs/ResourceSetLinks.md)
 - [Okta.PowerShell\Model.ResourceSetResource](docs/ResourceSetResource.md)
 - [Okta.PowerShell\Model.ResourceSetResourcePatchRequest](docs/ResourceSetResourcePatchRequest.md)
 - [Okta.PowerShell\Model.ResourceSetResources](docs/ResourceSetResources.md)
 - [Okta.PowerShell\Model.ResourceSetResourcesLinks](docs/ResourceSetResourcesLinks.md)
 - [Okta.PowerShell\Model.ResourceSets](docs/ResourceSets.md)
 - [Okta.PowerShell\Model.RiskEvent](docs/RiskEvent.md)
 - [Okta.PowerShell\Model.RiskEventSubject](docs/RiskEventSubject.md)
 - [Okta.PowerShell\Model.RiskEventSubjectRiskLevel](docs/RiskEventSubjectRiskLevel.md)
 - [Okta.PowerShell\Model.RiskPolicyRuleCondition](docs/RiskPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.RiskProvider](docs/RiskProvider.md)
 - [Okta.PowerShell\Model.RiskProviderAction](docs/RiskProviderAction.md)
 - [Okta.PowerShell\Model.RiskScorePolicyRuleCondition](docs/RiskScorePolicyRuleCondition.md)
 - [Okta.PowerShell\Model.Role](docs/Role.md)
 - [Okta.PowerShell\Model.RoleAssignmentType](docs/RoleAssignmentType.md)
 - [Okta.PowerShell\Model.RolePermissionType](docs/RolePermissionType.md)
 - [Okta.PowerShell\Model.RoleType](docs/RoleType.md)
 - [Okta.PowerShell\Model.SamlApplication](docs/SamlApplication.md)
 - [Okta.PowerShell\Model.SamlApplicationAllOf](docs/SamlApplicationAllOf.md)
 - [Okta.PowerShell\Model.SamlApplicationSettings](docs/SamlApplicationSettings.md)
 - [Okta.PowerShell\Model.SamlApplicationSettingsAllOf](docs/SamlApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.SamlApplicationSettingsApplication](docs/SamlApplicationSettingsApplication.md)
 - [Okta.PowerShell\Model.SamlApplicationSettingsSignOn](docs/SamlApplicationSettingsSignOn.md)
 - [Okta.PowerShell\Model.SamlAttributeStatement](docs/SamlAttributeStatement.md)
 - [Okta.PowerShell\Model.ScheduledUserLifecycleAction](docs/ScheduledUserLifecycleAction.md)
 - [Okta.PowerShell\Model.SchemeApplicationCredentials](docs/SchemeApplicationCredentials.md)
 - [Okta.PowerShell\Model.SchemeApplicationCredentialsAllOf](docs/SchemeApplicationCredentialsAllOf.md)
 - [Okta.PowerShell\Model.ScreenLockType](docs/ScreenLockType.md)
 - [Okta.PowerShell\Model.SecurePasswordStoreApplication](docs/SecurePasswordStoreApplication.md)
 - [Okta.PowerShell\Model.SecurePasswordStoreApplicationAllOf](docs/SecurePasswordStoreApplicationAllOf.md)
 - [Okta.PowerShell\Model.SecurePasswordStoreApplicationSettings](docs/SecurePasswordStoreApplicationSettings.md)
 - [Okta.PowerShell\Model.SecurePasswordStoreApplicationSettingsAllOf](docs/SecurePasswordStoreApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.SecurePasswordStoreApplicationSettingsApplication](docs/SecurePasswordStoreApplicationSettingsApplication.md)
 - [Okta.PowerShell\Model.SecurityQuestion](docs/SecurityQuestion.md)
 - [Okta.PowerShell\Model.SecurityQuestionUserFactor](docs/SecurityQuestionUserFactor.md)
 - [Okta.PowerShell\Model.SecurityQuestionUserFactorAllOf](docs/SecurityQuestionUserFactorAllOf.md)
 - [Okta.PowerShell\Model.SecurityQuestionUserFactorProfile](docs/SecurityQuestionUserFactorProfile.md)
 - [Okta.PowerShell\Model.SeedEnum](docs/SeedEnum.md)
 - [Okta.PowerShell\Model.Session](docs/Session.md)
 - [Okta.PowerShell\Model.SessionAuthenticationMethod](docs/SessionAuthenticationMethod.md)
 - [Okta.PowerShell\Model.SessionIdentityProvider](docs/SessionIdentityProvider.md)
 - [Okta.PowerShell\Model.SessionIdentityProviderType](docs/SessionIdentityProviderType.md)
 - [Okta.PowerShell\Model.SessionStatus](docs/SessionStatus.md)
 - [Okta.PowerShell\Model.SignInPage](docs/SignInPage.md)
 - [Okta.PowerShell\Model.SignInPageAllOf](docs/SignInPageAllOf.md)
 - [Okta.PowerShell\Model.SignInPageAllOfWidgetCustomizations](docs/SignInPageAllOfWidgetCustomizations.md)
 - [Okta.PowerShell\Model.SignInPageTouchPointVariant](docs/SignInPageTouchPointVariant.md)
 - [Okta.PowerShell\Model.SignOnInlineHook](docs/SignOnInlineHook.md)
 - [Okta.PowerShell\Model.SingleLogout](docs/SingleLogout.md)
 - [Okta.PowerShell\Model.SmsTemplate](docs/SmsTemplate.md)
 - [Okta.PowerShell\Model.SmsTemplateType](docs/SmsTemplateType.md)
 - [Okta.PowerShell\Model.SmsUserFactor](docs/SmsUserFactor.md)
 - [Okta.PowerShell\Model.SmsUserFactorAllOf](docs/SmsUserFactorAllOf.md)
 - [Okta.PowerShell\Model.SmsUserFactorProfile](docs/SmsUserFactorProfile.md)
 - [Okta.PowerShell\Model.SocialAuthToken](docs/SocialAuthToken.md)
 - [Okta.PowerShell\Model.SpCertificate](docs/SpCertificate.md)
 - [Okta.PowerShell\Model.Subscription](docs/Subscription.md)
 - [Okta.PowerShell\Model.SubscriptionStatus](docs/SubscriptionStatus.md)
 - [Okta.PowerShell\Model.SwaApplicationSettings](docs/SwaApplicationSettings.md)
 - [Okta.PowerShell\Model.SwaApplicationSettingsAllOf](docs/SwaApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.SwaApplicationSettingsApplication](docs/SwaApplicationSettingsApplication.md)
 - [Okta.PowerShell\Model.TempPassword](docs/TempPassword.md)
 - [Okta.PowerShell\Model.Theme](docs/Theme.md)
 - [Okta.PowerShell\Model.ThemeResponse](docs/ThemeResponse.md)
 - [Okta.PowerShell\Model.ThreatInsightConfiguration](docs/ThreatInsightConfiguration.md)
 - [Okta.PowerShell\Model.TokenAuthorizationServerPolicyRuleAction](docs/TokenAuthorizationServerPolicyRuleAction.md)
 - [Okta.PowerShell\Model.TokenAuthorizationServerPolicyRuleActionInlineHook](docs/TokenAuthorizationServerPolicyRuleActionInlineHook.md)
 - [Okta.PowerShell\Model.TokenUserFactor](docs/TokenUserFactor.md)
 - [Okta.PowerShell\Model.TokenUserFactorAllOf](docs/TokenUserFactorAllOf.md)
 - [Okta.PowerShell\Model.TokenUserFactorProfile](docs/TokenUserFactorProfile.md)
 - [Okta.PowerShell\Model.TotpUserFactor](docs/TotpUserFactor.md)
 - [Okta.PowerShell\Model.TotpUserFactorAllOf](docs/TotpUserFactorAllOf.md)
 - [Okta.PowerShell\Model.TotpUserFactorProfile](docs/TotpUserFactorProfile.md)
 - [Okta.PowerShell\Model.TrustedOrigin](docs/TrustedOrigin.md)
 - [Okta.PowerShell\Model.TrustedOriginScope](docs/TrustedOriginScope.md)
 - [Okta.PowerShell\Model.TrustedOriginScopeType](docs/TrustedOriginScopeType.md)
 - [Okta.PowerShell\Model.U2fUserFactor](docs/U2fUserFactor.md)
 - [Okta.PowerShell\Model.U2fUserFactorAllOf](docs/U2fUserFactorAllOf.md)
 - [Okta.PowerShell\Model.U2fUserFactorProfile](docs/U2fUserFactorProfile.md)
 - [Okta.PowerShell\Model.UpdateDomain](docs/UpdateDomain.md)
 - [Okta.PowerShell\Model.UpdateEmailDomain](docs/UpdateEmailDomain.md)
 - [Okta.PowerShell\Model.UpdateIamRoleRequest](docs/UpdateIamRoleRequest.md)
 - [Okta.PowerShell\Model.UpdateUserRequest](docs/UpdateUserRequest.md)
 - [Okta.PowerShell\Model.User](docs/User.md)
 - [Okta.PowerShell\Model.UserActivationToken](docs/UserActivationToken.md)
 - [Okta.PowerShell\Model.UserCondition](docs/UserCondition.md)
 - [Okta.PowerShell\Model.UserCredentials](docs/UserCredentials.md)
 - [Okta.PowerShell\Model.UserFactor](docs/UserFactor.md)
 - [Okta.PowerShell\Model.UserIdentifierConditionEvaluatorPattern](docs/UserIdentifierConditionEvaluatorPattern.md)
 - [Okta.PowerShell\Model.UserIdentifierMatchType](docs/UserIdentifierMatchType.md)
 - [Okta.PowerShell\Model.UserIdentifierPolicyRuleCondition](docs/UserIdentifierPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.UserIdentifierType](docs/UserIdentifierType.md)
 - [Okta.PowerShell\Model.UserIdentityProviderLinkRequest](docs/UserIdentityProviderLinkRequest.md)
 - [Okta.PowerShell\Model.UserLifecycleAttributePolicyRuleCondition](docs/UserLifecycleAttributePolicyRuleCondition.md)
 - [Okta.PowerShell\Model.UserNextLogin](docs/UserNextLogin.md)
 - [Okta.PowerShell\Model.UserPolicyRuleCondition](docs/UserPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.UserProfile](docs/UserProfile.md)
 - [Okta.PowerShell\Model.UserSchema](docs/UserSchema.md)
 - [Okta.PowerShell\Model.UserSchemaAttribute](docs/UserSchemaAttribute.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeEnum](docs/UserSchemaAttributeEnum.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeItems](docs/UserSchemaAttributeItems.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeMaster](docs/UserSchemaAttributeMaster.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeMasterPriority](docs/UserSchemaAttributeMasterPriority.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeMasterType](docs/UserSchemaAttributeMasterType.md)
 - [Okta.PowerShell\Model.UserSchemaAttributePermission](docs/UserSchemaAttributePermission.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeScope](docs/UserSchemaAttributeScope.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeType](docs/UserSchemaAttributeType.md)
 - [Okta.PowerShell\Model.UserSchemaAttributeUnion](docs/UserSchemaAttributeUnion.md)
 - [Okta.PowerShell\Model.UserSchemaBase](docs/UserSchemaBase.md)
 - [Okta.PowerShell\Model.UserSchemaBaseProperties](docs/UserSchemaBaseProperties.md)
 - [Okta.PowerShell\Model.UserSchemaDefinitions](docs/UserSchemaDefinitions.md)
 - [Okta.PowerShell\Model.UserSchemaProperties](docs/UserSchemaProperties.md)
 - [Okta.PowerShell\Model.UserSchemaPropertiesProfile](docs/UserSchemaPropertiesProfile.md)
 - [Okta.PowerShell\Model.UserSchemaPropertiesProfileItem](docs/UserSchemaPropertiesProfileItem.md)
 - [Okta.PowerShell\Model.UserSchemaPublic](docs/UserSchemaPublic.md)
 - [Okta.PowerShell\Model.UserStatus](docs/UserStatus.md)
 - [Okta.PowerShell\Model.UserStatusPolicyRuleCondition](docs/UserStatusPolicyRuleCondition.md)
 - [Okta.PowerShell\Model.UserType](docs/UserType.md)
 - [Okta.PowerShell\Model.UserTypeCondition](docs/UserTypeCondition.md)
 - [Okta.PowerShell\Model.UserVerificationEnum](docs/UserVerificationEnum.md)
 - [Okta.PowerShell\Model.VerificationMethod](docs/VerificationMethod.md)
 - [Okta.PowerShell\Model.VerifyFactorRequest](docs/VerifyFactorRequest.md)
 - [Okta.PowerShell\Model.VerifyUserFactorResponse](docs/VerifyUserFactorResponse.md)
 - [Okta.PowerShell\Model.VerifyUserFactorResult](docs/VerifyUserFactorResult.md)
 - [Okta.PowerShell\Model.VersionObject](docs/VersionObject.md)
 - [Okta.PowerShell\Model.WebAuthnUserFactor](docs/WebAuthnUserFactor.md)
 - [Okta.PowerShell\Model.WebAuthnUserFactorAllOf](docs/WebAuthnUserFactorAllOf.md)
 - [Okta.PowerShell\Model.WebAuthnUserFactorProfile](docs/WebAuthnUserFactorProfile.md)
 - [Okta.PowerShell\Model.WebUserFactor](docs/WebUserFactor.md)
 - [Okta.PowerShell\Model.WebUserFactorAllOf](docs/WebUserFactorAllOf.md)
 - [Okta.PowerShell\Model.WebUserFactorProfile](docs/WebUserFactorProfile.md)
 - [Okta.PowerShell\Model.WellKnownOrgMetadata](docs/WellKnownOrgMetadata.md)
 - [Okta.PowerShell\Model.WellKnownOrgMetadataLinks](docs/WellKnownOrgMetadataLinks.md)
 - [Okta.PowerShell\Model.WellKnownOrgMetadataSettings](docs/WellKnownOrgMetadataSettings.md)
 - [Okta.PowerShell\Model.WsFederationApplication](docs/WsFederationApplication.md)
 - [Okta.PowerShell\Model.WsFederationApplicationAllOf](docs/WsFederationApplicationAllOf.md)
 - [Okta.PowerShell\Model.WsFederationApplicationSettings](docs/WsFederationApplicationSettings.md)
 - [Okta.PowerShell\Model.WsFederationApplicationSettingsAllOf](docs/WsFederationApplicationSettingsAllOf.md)
 - [Okta.PowerShell\Model.WsFederationApplicationSettingsApplication](docs/WsFederationApplicationSettingsApplication.md)


<a id="documentation-for-authorization"></a>
## Documentation for Authorization


Authentication schemes defined for the API:
<a id="apiToken"></a>
### apiToken

- **Type**: API key

- **API key parameter name**: Authorization
- **Location**: HTTP header

<a id="oauth2"></a>
### oauth2


- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /oauth2/v1/authorize
- **Scopes**: 
  - okta.agentPools.manage: Allows the app to create and manage agent pools in your Okta organization.
  - okta.agentPools.read: Allows the app to read agent pools in your Okta organization.
  - okta.apiToken.manage: Allows the app to manage API Tokens in your Okta organization.
  - okta.apiToken.read: Allows the app to read API Tokens in your Okta organization.
  - okta.apps.manage: Allows the app to create and manage Apps in your Okta organization.
  - okta.apps.read: Allows the app to read information about Apps in your Okta organization.
  - okta.authenticators.manage: Allows the app to manage all authenticators (e.g. enrollments, reset).
  - okta.authenticators.read: Allows the app to read org authenticators information.
  - okta.authorizationServers.manage: Allows the app to create and manage Authorization Servers in your Okta organization.
  - okta.authorizationServers.read: Allows the app to read information about Authorization Servers in your Okta organization.
  - okta.behaviors.manage: Allows the app to create and manage behavior detection rules in your Okta organization.
  - okta.behaviors.read: Allows the app to read behavior detection rules in your Okta organization.
  - okta.brands.manage: Allows the app to create and manage Brands and Themes in your Okta organization.
  - okta.brands.read: Allows the app to read information about Brands and Themes in your Okta organization.
  - okta.captchas.manage: Allows the app to create and manage CAPTCHAs in your Okta organization.
  - okta.captchas.read: Allows the app to read information about CAPTCHAs in your Okta organization.
  - okta.deviceAssurance.manage: Allows the app to manage device assurances.
  - okta.deviceAssurance.read: Allows the app to read device assurances.
  - okta.devices.manage: Allows the app to manage device status transitions and delete a device.
  - okta.devices.read: Allows the app to read the existing device&#39;s profile and search devices.
  - okta.domains.manage: Allows the app to manage custom Domains for your Okta organization.
  - okta.domains.read: Allows the app to read information about custom Domains for your Okta organization.
  - okta.eventHooks.manage: Allows the app to create and manage Event Hooks in your Okta organization.
  - okta.eventHooks.read: Allows the app to read information about Event Hooks in your Okta organization.
  - okta.groups.manage: Allows the app to manage existing groups in your Okta organization.
  - okta.groups.read: Allows the app to read information about groups and their members in your Okta organization.
  - okta.idps.manage: Allows the app to create and manage Identity Providers in your Okta organization.
  - okta.idps.read: Allows the app to read information about Identity Providers in your Okta organization.
  - okta.inlineHooks.manage: Allows the app to create and manage Inline Hooks in your Okta organization.
  - okta.inlineHooks.read: Allows the app to read information about Inline Hooks in your Okta organization.
  - okta.linkedObjects.manage: Allows the app to manage linked object definitions in your Okta organization.
  - okta.linkedObjects.read: Allows the app to read linked object definitions in your Okta organization.
  - okta.logStreams.manage: Allows the app to create and manage log streams in your Okta organization.
  - okta.logStreams.read: Allows the app to read information about log streams in your Okta organization.
  - okta.logs.read: Allows the app to read information about System Log entries in your Okta organization.
  - okta.orgs.manage: Allows the app to manage organization-specific details for your Okta organization.
  - okta.orgs.read: Allows the app to read organization-specific details about your Okta organization.
  - okta.policies.manage: Allows the app to manage policies in your Okta organization.
  - okta.policies.read: Allows the app to read information about policies in your Okta organization.
  - okta.principalRateLimits.manage: Allows the app to create and manage Principal Rate Limits in your Okta organization.
  - okta.principalRateLimits.read: Allows the app to read information about Principal Rate Limits in your Okta organization.
  - okta.profileMappings.manage: Allows the app to manage user profile mappings in your Okta organization.
  - okta.profileMappings.read: Allows the app to read user profile mappings in your Okta organization.
  - okta.pushProviders.manage: Allows the app to create and manage push notification providers such as APNs and FCM.
  - okta.pushProviders.read: Allows the app to read push notification providers such as APNs and FCM.
  - okta.rateLimits.manage: Allows the app to create and manage rate limits in your Okta organization.
  - okta.rateLimits.read: Allows the app to read information about rate limits in your Okta organization.
  - okta.riskEvents.manage: Allows the app to publish risk events to your Okta organization.
  - okta.riskProviders.manage: Allows the app to create and manage risk provider integrations in your Okta organization.
  - okta.riskProviders.read: Allows the app to read all risk provider integrations in your Okta organization.
  - okta.roles.manage: Allows the app to manage administrative role assignments for users in your Okta organization.
  - okta.roles.read: Allows the app to read administrative role assignments for users in your Okta organization.
  - okta.schemas.manage: Allows the app to create and manage Schemas in your Okta organization.
  - okta.schemas.read: Allows the app to read information about Schemas in your Okta organization.
  - okta.sessions.manage: Allows the app to manage all sessions in your Okta organization.
  - okta.sessions.read: Allows the app to read all sessions in your Okta organization.
  - okta.templates.manage: Allows the app to manage all custom templates in your Okta organization.
  - okta.templates.read: Allows the app to read all custom templates in your Okta organization.
  - okta.trustedOrigins.manage: Allows the app to manage all Trusted Origins in your Okta organization.
  - okta.trustedOrigins.read: Allows the app to read all Trusted Origins in your Okta organization.
  - okta.userTypes.manage: Allows the app to manage user types in your Okta organization.
  - okta.userTypes.read: Allows the app to read user types in your Okta organization.
  - okta.users.manage: Allows the app to create new users and to manage all users&#39; profile and credentials information.
  - okta.users.read: Allows the app to read the existing users&#39; profiles and credentials.

