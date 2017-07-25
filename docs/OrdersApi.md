# SquareConnect::OrdersApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_order**](OrdersApi.md#create_order) | **POST** /v2/locations/{location_id}/orders | CreateOrder


# **create_order**
> CreateOrderResponse create_order(location_id, body)

CreateOrder

Creates an [Order](#type-order) that can then be included as referenced `order_id` in a request to the [Charge](#endpoint-charge) endpoint. Orders specify products for purchase, along with discounts, taxes, and other settings to apply to the purchase.  To associate a created order with a request to the Charge endpoint, provide the order's `id` in the `order_id` field of your request.  You cannot modify an order after you create it. If you need to modify an order, instead create a new order with modified details.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::OrdersApi.new

location_id = "location_id_example" # String | The ID of the business location to associate the order with.

body = SquareConnect::CreateOrderRequest.new # CreateOrderRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateOrder
  result = api_instance.create_order(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OrdersApi->create_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the business location to associate the order with. | 
 **body** | [**CreateOrderRequest**](CreateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateOrderResponse**](CreateOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



