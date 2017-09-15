# SquareConnect::OrdersApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_retrieve_orders**](OrdersApi.md#batch_retrieve_orders) | **POST** /v2/locations/{location_id}/orders/batch-retrieve | BatchRetrieveOrders
[**create_order**](OrdersApi.md#create_order) | **POST** /v2/locations/{location_id}/orders | CreateOrder


# **batch_retrieve_orders**
> BatchRetrieveOrdersResponse batch_retrieve_orders(location_id, body)

BatchRetrieveOrders

Retrieves a set of [Order](#type-order)s by their IDs. Only orders that have been successfully charged are included in the response.  If any of the order IDs in the request do not exist, or are associated with uncharged orders, then those orders will not be included in the set of orders in the response.  Note that in the future, uncharged orders may be returned by this endpoint.

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

location_id = "location_id_example" # String | The ID of the orders' associated location.

body = SquareConnect::BatchRetrieveOrdersRequest.new # BatchRetrieveOrdersRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchRetrieveOrders
  result = api_instance.batch_retrieve_orders(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OrdersApi->batch_retrieve_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the orders&#39; associated location. | 
 **body** | [**BatchRetrieveOrdersRequest**](BatchRetrieveOrdersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchRetrieveOrdersResponse**](BatchRetrieveOrdersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_order**
> CreateOrderResponse create_order(location_id, body)

CreateOrder

Creates an [Order](#type-order) that can then be referenced as `order_id` in a request to the [Charge](#endpoint-charge) endpoint. Orders specify products for purchase, along with discounts, taxes, and other settings to apply to the purchase.  To associate a created order with a request to the Charge endpoint, provide the order's `id` in the `order_id` field of your request.  You cannot modify an order after you create it. If you need to modify an order, instead create a new order with modified details.  To learn more about the Orders API, see the [Orders API Overview](https://docs.connect.squareup.com/articles/orders-api-overview).

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



