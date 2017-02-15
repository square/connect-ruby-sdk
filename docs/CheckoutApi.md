# SquareConnect::CheckoutApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_checkout**](CheckoutApi.md#create_checkout) | **POST** /v2/locations/{location_id}/checkouts | CreateCheckout


# **create_checkout**
> CreateCheckoutResponse create_checkout(authorization, location_id, body)

CreateCheckout

Creates a [Checkout](#type-checkout) response that links a `checkoutId` and `checkout_page_url` that customers can be directed to in order to provide their payment information using a payment processing workflow hosted on connect.squareup.com.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CheckoutApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | The ID of the business location to associate the checkout with.

body = SquareConnect::CreateCheckoutRequest.new # CreateCheckoutRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCheckout
  result = api_instance.create_checkout(authorization, location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CheckoutApi->create_checkout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**| The ID of the business location to associate the checkout with. | 
 **body** | [**CreateCheckoutRequest**](CreateCheckoutRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateCheckoutResponse**](CreateCheckoutResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



