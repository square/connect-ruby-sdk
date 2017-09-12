# SquareConnect::TransactionsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**capture_transaction**](TransactionsApi.md#capture_transaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/capture | CaptureTransaction
[**charge**](TransactionsApi.md#charge) | **POST** /v2/locations/{location_id}/transactions | Charge
[**create_refund**](TransactionsApi.md#create_refund) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/refund | CreateRefund
[**list_refunds**](TransactionsApi.md#list_refunds) | **GET** /v2/locations/{location_id}/refunds | ListRefunds
[**list_transactions**](TransactionsApi.md#list_transactions) | **GET** /v2/locations/{location_id}/transactions | ListTransactions
[**retrieve_transaction**](TransactionsApi.md#retrieve_transaction) | **GET** /v2/locations/{location_id}/transactions/{transaction_id} | RetrieveTransaction
[**void_transaction**](TransactionsApi.md#void_transaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/void | VoidTransaction


# **capture_transaction**
> CaptureTransactionResponse capture_transaction(location_id, transaction_id)

CaptureTransaction

Captures a transaction that was created with the [Charge](#endpoint-charge) endpoint with a `delay_capture` value of `true`.  See [Delayed capture transactions](/articles/delayed-capture-transactions/) for more information.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::TransactionsApi.new

location_id = "location_id_example" # String | 

transaction_id = "transaction_id_example" # String | 


begin
  #CaptureTransaction
  result = api_instance.capture_transaction(location_id, transaction_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->capture_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**|  | 
 **transaction_id** | **String**|  | 

### Return type

[**CaptureTransactionResponse**](CaptureTransactionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **charge**
> ChargeResponse charge(location_id, body)

Charge

Charges a card represented by a card nonce or a customer's card on file.  Your request to this endpoint must include _either_:  - A value for the `card_nonce` parameter (to charge a card nonce generated with the `SqPaymentForm`) - Values for the `customer_card_id` and `customer_id` parameters (to charge a customer's card on file)  In order for an e-commerce payment to potentially qualify for [Square chargeback protection](https://squareup.com/help/article/5394), you _must_ provide values for the following parameters in your request:  - `buyer_email_address` - At least one of `billing_address` or `shipping_address`  When this response is returned, the amount of Square's processing fee might not yet be calculated. To obtain the processing fee, wait about ten seconds and call [RetrieveTransaction](#endpoint-retrievetransaction). See the `processing_fee_money` field of each [Tender included](#type-tender) in the transaction.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to associate the created transaction with.

body = SquareConnect::ChargeRequest.new # ChargeRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Charge
  result = api_instance.charge(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to associate the created transaction with. | 
 **body** | [**ChargeRequest**](ChargeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_refund**
> CreateRefundResponse create_refund(location_id, transaction_id, body)

CreateRefund

Initiates a refund for a previously charged tender.  You must issue a refund within 120 days of the associated payment. See [this article](https://squareup.com/help/us/en/article/5060) for more information on refund behavior.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::TransactionsApi.new

location_id = "location_id_example" # String | The ID of the original transaction's associated location.

transaction_id = "transaction_id_example" # String | The ID of the original transaction that includes the tender to refund.

body = SquareConnect::CreateRefundRequest.new # CreateRefundRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateRefund
  result = api_instance.create_refund(location_id, transaction_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->create_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the original transaction&#39;s associated location. | 
 **transaction_id** | **String**| The ID of the original transaction that includes the tender to refund. | 
 **body** | [**CreateRefundRequest**](CreateRefundRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateRefundResponse**](CreateRefundResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_refunds**
> ListRefundsResponse list_refunds(location_id, opts)

ListRefunds

Lists refunds for one of a business's locations.  Refunds with a `status` of `PENDING` are not currently included in this endpoint's response.  Max results per [page](#paginatingresults): 50

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to list refunds for.

opts = { 
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time.
  sort_order: "sort_order_example", # String | The order in which results are listed in the response (`ASC` for oldest first, `DESC` for newest first).  Default value: `DESC`
  cursor: "cursor_example" # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
}

begin
  #ListRefunds
  result = api_instance.list_refunds(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->list_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list refunds for. | 
 **begin_time** | **String**| The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time. | [optional] 
 **sort_order** | **String**| The order in which results are listed in the response (&#x60;ASC&#x60; for oldest first, &#x60;DESC&#x60; for newest first).  Default value: &#x60;DESC&#x60; | [optional] 
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 

### Return type

[**ListRefundsResponse**](ListRefundsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_transactions**
> ListTransactionsResponse list_transactions(location_id, opts)

ListTransactions

Lists transactions for a particular location.  Max results per [page](#paginatingresults): 50

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to list transactions for.

opts = { 
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time.
  sort_order: "sort_order_example", # String | The order in which results are listed in the response (`ASC` for oldest first, `DESC` for newest first).  Default value: `DESC`
  cursor: "cursor_example" # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
}

begin
  #ListTransactions
  result = api_instance.list_transactions(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->list_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list transactions for. | 
 **begin_time** | **String**| The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time. | [optional] 
 **sort_order** | **String**| The order in which results are listed in the response (&#x60;ASC&#x60; for oldest first, &#x60;DESC&#x60; for newest first).  Default value: &#x60;DESC&#x60; | [optional] 
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 

### Return type

[**ListTransactionsResponse**](ListTransactionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_transaction**
> RetrieveTransactionResponse retrieve_transaction(location_id, transaction_id)

RetrieveTransaction

Retrieves details for a single transaction.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::TransactionsApi.new

location_id = "location_id_example" # String | The ID of the transaction's associated location.

transaction_id = "transaction_id_example" # String | The ID of the transaction to retrieve.


begin
  #RetrieveTransaction
  result = api_instance.retrieve_transaction(location_id, transaction_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->retrieve_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the transaction&#39;s associated location. | 
 **transaction_id** | **String**| The ID of the transaction to retrieve. | 

### Return type

[**RetrieveTransactionResponse**](RetrieveTransactionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **void_transaction**
> VoidTransactionResponse void_transaction(location_id, transaction_id)

VoidTransaction

Cancels a transaction that was created with the [Charge](#endpoint-charge) endpoint with a `delay_capture` value of `true`.  See [Delayed capture transactions](/articles/delayed-capture-transactions/) for more information.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::TransactionsApi.new

location_id = "location_id_example" # String | 

transaction_id = "transaction_id_example" # String | 


begin
  #VoidTransaction
  result = api_instance.void_transaction(location_id, transaction_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->void_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**|  | 
 **transaction_id** | **String**|  | 

### Return type

[**VoidTransactionResponse**](VoidTransactionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



