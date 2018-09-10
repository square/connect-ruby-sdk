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

Exchanges the authorization code for an access token.  After a merchant authorizes your application with the permissions form, an authorization code is sent to the application's redirect URL (See [Implementing OAuth](https://docs.connect.squareup.com/api/oauth#implementingoauth) for information about how to set up the redirect URL).

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

Renews an OAuth access token before it expires.  OAuth access tokens besides your application's personal access token expire after __30 days__. You can also renew expired tokens within __15 days__ of their expiration. You cannot renew an access token that has been expired for more than 15 days. Instead, the associated merchant must complete the [OAuth flow](https://docs.connect.squareup.com/api/oauth#implementingoauth) from the beginning.  __Important:__ The `Authorization` header you provide to this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with your application's secret, available from the [application dashboard](https://connect.squareup.com/apps).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure API key authorization: oauth2ClientSecret
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  config.api_key_prefix['Authorization'] = 'Client'
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

Revokes an access token generated with the OAuth flow.  If a merchant has more than one access token for your application, this endpoint revokes all of them, regardless of which token you specify. If you revoke a merchant's access token, all of the merchant's active subscriptions associated with your application are canceled immediately.  __Important:__ The `Authorization` header you provide to this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with your application's secret, available from the [application dashboard](https://connect.squareup.com/apps).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure API key authorization: oauth2ClientSecret
  config.api_key['Authorization'] = 'YOUR API KEY'
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



