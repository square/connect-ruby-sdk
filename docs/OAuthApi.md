# SquareConnect::OAuthApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**obtain_token**](OAuthApi.md#obtain_token) | **POST** /oauth2/token | ObtainToken
[**renew_token**](OAuthApi.md#renew_token) | **POST** /oauth2/clients/{client_id}/access-token/renew | RenewToken
[**revoke_token**](OAuthApi.md#revoke_token) | **POST** /oauth2/revoke | RevokeToken


# **obtain_token**
> ObtainTokenResponse obtain_token(body)

ObtainToken

Returns an OAuth access token.   The endpoint supports distinct methods of obtaining OAuth access tokens.  Applications specify a method by adding the `grant_type` parameter  in the request and also provide relevant information.  For more information, see [OAuth access token management](/authz/oauth/how-it-works#oauth-access-token-management).   __Note:__ Regardless of the method application specified, the endpoint always returns two items; an OAuth access token and  a refresh token in the response.   By default, the OAuth API lets up to 500 Square accounts authorize your application. Please [contact support](https://squareup.com/help/us/en/contact?prefill=developer_api) if you are developing an application for a larger audience.  __OAuth tokens should only live on secure servers. Application clients should never interact directly with OAuth tokens__.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::OAuthApi.new

body = SquareConnect::ObtainTokenRequest.new # ObtainTokenRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #ObtainToken
  result = api_instance.obtain_token(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OAuthApi->obtain_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ObtainTokenRequest**](ObtainTokenRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**ObtainTokenResponse**](ObtainTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **renew_token**
> RenewTokenResponse renew_token(client_id, body)

RenewToken

`RenewToken` is deprecated. For information about refreshing OAuth access tokens, see  [Renew OAuth Token](/authz/oauth/cookbook/oauth-renew).   Renews an OAuth access token before it expires.  OAuth access tokens besides your application's personal access token expire after __30 days__. You can also renew expired tokens within __15 days__ of their expiration. You cannot renew an access token that has been expired for more than 15 days. Instead, the associated user must re-complete the OAuth flow from the beginning.  __Important:__ The `Authorization` header for this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with the application secret on the Credentials page in the [application dashboard](https://connect.squareup.com/apps).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure API key authorization: oauth2ClientSecret
  config.api_key['Authorization'] = 'YOUR APPLICATION SECRET'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SquareConnect::OAuthApi.new

client_id = "client_id_example" # String | Your application's ID, available from the [application dashboard](https://connect.squareup.com/apps).

body = SquareConnect::RenewTokenRequest.new # RenewTokenRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #RenewToken
  result = api_instance.renew_token(client_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OAuthApi->renew_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| Your application&#39;s ID, available from the [application dashboard](https://connect.squareup.com/apps). | 
 **body** | [**RenewTokenRequest**](RenewTokenRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**RenewTokenResponse**](RenewTokenResponse.md)

### Authorization

[oauth2ClientSecret](../README.md#oauth2ClientSecret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revoke_token**
> RevokeTokenResponse revoke_token(body)

RevokeToken

Revokes an access token generated with the OAuth flow.  If an account has more than one OAuth access token for your application, this endpoint revokes all of them, regardless of which token you specify. When an OAuth access token is revoked, all of the active subscriptions associated with that OAuth token are canceled immediately.  __Important:__ The `Authorization` header for this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with the application secret on the Credentials page in the [application dashboard](https://connect.squareup.com/apps).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure API key authorization: oauth2ClientSecret
  config.api_key['Authorization'] = 'YOUR APPLICATION SECRET'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SquareConnect::OAuthApi.new

body = SquareConnect::RevokeTokenRequest.new # RevokeTokenRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #RevokeToken
  result = api_instance.revoke_token(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OAuthApi->revoke_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RevokeTokenRequest**](RevokeTokenRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**RevokeTokenResponse**](RevokeTokenResponse.md)

### Authorization

[oauth2ClientSecret](../README.md#oauth2ClientSecret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



