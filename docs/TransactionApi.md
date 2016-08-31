# SquareConnect::TransactionApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**capture_transaction**](TransactionApi.md#capture_transaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/capture | CaptureTransaction
[**charge**](TransactionApi.md#charge) | **POST** /v2/locations/{location_id}/transactions | Charge
[**list_transactions**](TransactionApi.md#list_transactions) | **GET** /v2/locations/{location_id}/transactions | ListTransactions
[**retrieve_transaction**](TransactionApi.md#retrieve_transaction) | **GET** /v2/locations/{location_id}/transactions/{transaction_id} | RetrieveTransaction
[**void_transaction**](TransactionApi.md#void_transaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/void | VoidTransaction


# **capture_transaction**
> CaptureTransactionResponse capture_transaction(authorization, location_id, transaction_id)

CaptureTransaction

Captures a transaction that was created with the **Charge** endpoint with a `delay_capture` value of `true`.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::TransactionApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | 

transaction_id = "transaction_id_example" # String | 


begin
  #CaptureTransaction
  result = api_instance.capture_transaction(authorization, location_id, transaction_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionApi->capture_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**|  | 
 **transaction_id** | **String**|  | 

### Return type

[**CaptureTransactionResponse**](CaptureTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **charge**
> ChargeResponse charge(authorization, location_id, body)

Charge

Charges a card represented by a token.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::TransactionApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | The ID of the location to associate the transaction with.

body = SquareConnect::ChargeRequest.new # ChargeRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Charge
  result = api_instance.charge(authorization, location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionApi->charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**| The ID of the location to associate the transaction with. | 
 **body** | [**ChargeRequest**](ChargeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_transactions**
> ListTransactionsResponse list_transactions(authorization, location_id, opts)

ListTransactions

Lists transactions for a particular location.  When making a request to this endpoint, your request body **must** include either the `cursor` parameter, or it must include both `begin_time` and `end_time` with an optional `sort_order`.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::TransactionApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | The ID of the location to list transactions for.

opts = { 
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in RFC 3339 format.
  end_time: "end_time_example", # String | The end of the requested reporting period, in RFC 3339 format.
  sort_order: "sort_order_example", # String | The order in which results are listed in the response (`ASC` for chronological, `DESC` for reverse-chronological).
  cursor: "cursor_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListTransactions
  result = api_instance.list_transactions(authorization, location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionApi->list_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**| The ID of the location to list transactions for. | 
 **begin_time** | **String**| The beginning of the requested reporting period, in RFC 3339 format. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in RFC 3339 format. | [optional] 
 **sort_order** | **String**| The order in which results are listed in the response (&#x60;ASC&#x60; for chronological, &#x60;DESC&#x60; for reverse-chronological). | [optional] 
 **cursor** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**ListTransactionsResponse**](ListTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_transaction**
> RetrieveTransactionResponse retrieve_transaction(authorization, location_id, transaction_id)

RetrieveTransaction

Retrieves details for a single transaction.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::TransactionApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | 

transaction_id = "transaction_id_example" # String | 


begin
  #RetrieveTransaction
  result = api_instance.retrieve_transaction(authorization, location_id, transaction_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionApi->retrieve_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**|  | 
 **transaction_id** | **String**|  | 

### Return type

[**RetrieveTransactionResponse**](RetrieveTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **void_transaction**
> VoidTransactionResponse void_transaction(authorization, location_id, transaction_id)

VoidTransaction

Cancels a transaction that was created with the **Charge** endpoint with a `delay_capture` value of `true`.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::TransactionApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

location_id = "location_id_example" # String | 

transaction_id = "transaction_id_example" # String | 


begin
  #VoidTransaction
  result = api_instance.void_transaction(authorization, location_id, transaction_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionApi->void_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **location_id** | **String**|  | 
 **transaction_id** | **String**|  | 

### Return type

[**VoidTransactionResponse**](VoidTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



