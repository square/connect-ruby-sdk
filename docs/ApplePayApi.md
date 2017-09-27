# SquareConnect::ApplePayApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**register_domain**](ApplePayApi.md#register_domain) | **POST** /v2/apple-pay/domains | RegisterDomain


# **register_domain**
> RegisterDomainResponse register_domain(body)

RegisterDomain

Activates a domain for use with Web Apple Pay and Square. A validation will be performed on this domain by Apple to ensure is it properly set up as an Apple Pay enabled domain.  This endpoint provides an easy way for platform developers to bulk activate Web Apple Pay with Square for merchants using their platform.  To learn more about Apple Pay on Web see the Apple Pay section in the [Embedding the Square Payment Form](https://docs.connect.squareup.com/articles/adding-payment-form) guide.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::ApplePayApi.new

body = SquareConnect::RegisterDomainRequest.new # RegisterDomainRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #RegisterDomain
  result = api_instance.register_domain(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling ApplePayApi->register_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterDomainRequest**](RegisterDomainRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**RegisterDomainResponse**](RegisterDomainResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



