# SquareConnect::MobileAuthorizationApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_mobile_authorization_code**](MobileAuthorizationApi.md#create_mobile_authorization_code) | **POST** /mobile/authorization-code | CreateMobileAuthorizationCode


# **create_mobile_authorization_code**
> CreateMobileAuthorizationCodeResponse create_mobile_authorization_code(body)

CreateMobileAuthorizationCode

Generates code to authorize a mobile application to connect to a Square card reader  Authorization codes are one-time-use and expire __60 minutes__ after being issued.  __Important:__ The `Authorization` header you provide to this endpoint must have the following format:  ``` Authorization: Bearer ACCESS_TOKEN ```  Replace `ACCESS_TOKEN` with a [valid production authorization credential](https://docs.connect.squareup.com/get-started#step-4-understand-the-different-application-credentials).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::MobileAuthorizationApi.new

body = SquareConnect::CreateMobileAuthorizationCodeRequest.new # CreateMobileAuthorizationCodeRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateMobileAuthorizationCode
  result = api_instance.create_mobile_authorization_code(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling MobileAuthorizationApi->create_mobile_authorization_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateMobileAuthorizationCodeRequest**](CreateMobileAuthorizationCodeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateMobileAuthorizationCodeResponse**](CreateMobileAuthorizationCodeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



