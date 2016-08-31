# SquareConnect::RefundApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_refund**](RefundApi.md#create_refund) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/refund | CreateRefund
[**list_refunds**](RefundApi.md#list_refunds) | **GET** /v2/locations/{location_id}/refunds | ListRefunds


# **create_refund**
> CreateRefundResponse create_refund(authorization, location_id, transaction_id, body)

CreateRefund

Initiates a refund for a previously charged tender.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::RefundApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | The ID of the original transaction's associated location.

transaction_id = "transaction_id_example" # String | 

body = SquareConnect::CreateRefundRequest.new # CreateRefundRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateRefund
  result = api_instance.create_refund(authorization, location_id, transaction_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling RefundApi->create_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**| The ID of the original transaction&#39;s associated location. | 
 **transaction_id** | **String**|  | 
 **body** | [**CreateRefundRequest**](CreateRefundRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateRefundResponse**](CreateRefundResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_refunds**
> ListRefundsResponse list_refunds(authorization, location_id, opts)

ListRefunds

Lists refunds for one of a business's locations.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::RefundApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | The ID of the location to list refunds for.

opts = { 
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in RFC 3339 format.
  end_time: "end_time_example", # String | The end of the requested reporting period, in RFC 3339 format.
  sort_order: "sort_order_example", # String | The order in which results are listed in the response.
  cursor: "cursor_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListRefunds
  result = api_instance.list_refunds(authorization, location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling RefundApi->list_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**| The ID of the location to list refunds for. | 
 **begin_time** | **String**| The beginning of the requested reporting period, in RFC 3339 format. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in RFC 3339 format. | [optional] 
 **sort_order** | **String**| The order in which results are listed in the response. | [optional] 
 **cursor** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**ListRefundsResponse**](ListRefundsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



