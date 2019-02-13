# SquareConnect::CheckoutApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_checkout**](CheckoutApi.md#create_checkout) | **POST** /v2/locations/{location_id}/checkouts | CreateCheckout


# **create_checkout**
> CreateCheckoutResponse create_checkout(location_id, body)

CreateCheckout

Links a `checkoutId` to a `checkout_page_url` that customers will be directed to in order to provide their payment information using a payment processing workflow hosted on connect.squareup.com.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CheckoutApi.new

location_id = "location_id_example" # String | The ID of the business location to associate the checkout with.

body = SquareConnect::CreateCheckoutRequest.new # CreateCheckoutRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCheckout
  result = api_instance.create_checkout(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CheckoutApi->create_checkout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the business location to associate the checkout with. | 
 **body** | [**CreateCheckoutRequest**](CreateCheckoutRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateCheckoutResponse**](CreateCheckoutResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



