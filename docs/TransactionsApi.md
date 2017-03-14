# SquareConnect::TransactionsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_create_refund**](TransactionsApi.md#v1_create_refund) | **POST** /v1/{location_id}/refunds | Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.
[**v1_list_bank_accounts**](TransactionsApi.md#v1_list_bank_accounts) | **GET** /v1/{location_id}/bank-accounts | Provides non-confidential details for all of a location&#39;s associated bank accounts. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.
[**v1_list_orders**](TransactionsApi.md#v1_list_orders) | **GET** /v1/{location_id}/orders | Provides summary information for a merchant&#39;s online store orders.
[**v1_list_payments**](TransactionsApi.md#v1_list_payments) | **GET** /v1/{location_id}/payments | Provides summary information for all payments taken by a merchant or any of the merchant&#39;s mobile staff during a date range. Date ranges cannot exceed one year in length. See Date ranges for details of inclusive and exclusive dates.
[**v1_list_refunds**](TransactionsApi.md#v1_list_refunds) | **GET** /v1/{location_id}/refunds | Provides the details for all refunds initiated by a merchant or any of the merchant&#39;s mobile staff during a date range. Date ranges cannot exceed one year in length.
[**v1_list_settlements**](TransactionsApi.md#v1_list_settlements) | **GET** /v1/{location_id}/settlements | Provides summary information for all deposits and withdrawals initiated by Square to a merchant&#39;s bank account during a date range. Date ranges cannot exceed one year in length.
[**v1_retrieve_bank_account**](TransactionsApi.md#v1_retrieve_bank_account) | **GET** /v1/{location_id}/bank-accounts/{bank_account_id} | Provides non-confidential details for a merchant&#39;s associated bank account. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.
[**v1_retrieve_order**](TransactionsApi.md#v1_retrieve_order) | **GET** /v1/{location_id}/orders/{order_id} | Provides comprehensive information for a single online store order, including the order&#39;s history.
[**v1_retrieve_payment**](TransactionsApi.md#v1_retrieve_payment) | **GET** /v1/{location_id}/payments/{payment_id} | Provides comprehensive information for a single payment.
[**v1_retrieve_settlement**](TransactionsApi.md#v1_retrieve_settlement) | **GET** /v1/{location_id}/settlements/{settlement_id} | Provides comprehensive information for a single settlement, including the entries that contribute to the settlement&#39;s total.
[**v1_update_order**](TransactionsApi.md#v1_update_order) | **PUT** /v1/{location_id}/orders/{order_id} | Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:


# **v1_create_refund**
> V1Refund v1_create_refund(location_id, body)

Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.

Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.

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

location_id = "location_id_example" # String | The ID of the original payment's associated location.

body = SquareConnect::V1CreateRefundRequest.new # V1CreateRefundRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.
  result = api_instance.v1_create_refund(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_create_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the original payment&#39;s associated location. | 
 **body** | [**V1CreateRefundRequest**](V1CreateRefundRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Refund**](V1Refund.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_list_bank_accounts**
> Array&lt;V1BankAccount&gt; v1_list_bank_accounts(location_id)

Provides non-confidential details for all of a location's associated bank accounts. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.

Provides non-confidential details for all of a location's associated bank accounts. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.

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

location_id = "location_id_example" # String | The ID of the location to list bank accounts for.


begin
  #Provides non-confidential details for all of a location's associated bank accounts. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.
  result = api_instance.v1_list_bank_accounts(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_list_bank_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list bank accounts for. | 

### Return type

[**Array&lt;V1BankAccount&gt;**](V1BankAccount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_list_orders**
> Array&lt;V1Order&gt; v1_list_orders(location_id, opts)

Provides summary information for a merchant's online store orders.

Provides summary information for a merchant's online store orders.

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

location_id = "location_id_example" # String | The ID of the location to list online store orders for.

opts = { 
  order: "order_example", # String | TThe order in which payments are listed in the response.
  limit: 56 # Integer | The maximum number of payments to return in a single response. This value cannot exceed 200.
}

begin
  #Provides summary information for a merchant's online store orders.
  result = api_instance.v1_list_orders(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_list_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list online store orders for. | 
 **order** | **String**| TThe order in which payments are listed in the response. | [optional] 
 **limit** | **Integer**| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 

### Return type

[**Array&lt;V1Order&gt;**](V1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_list_payments**
> Array&lt;V1Payment&gt; v1_list_payments(location_id, opts)

Provides summary information for all payments taken by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length. See Date ranges for details of inclusive and exclusive dates.

Provides summary information for all payments taken by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length. See Date ranges for details of inclusive and exclusive dates.

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

location_id = "location_id_example" # String | The ID of the location to list payments for. If you specify me, this endpoint returns payments aggregated from all of the business's locations.

opts = { 
  order: "order_example", # String | The order in which payments are listed in the response.
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time.
  limit: 56 # Integer | The maximum number of payments to return in a single response. This value cannot exceed 200.
}

begin
  #Provides summary information for all payments taken by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length. See Date ranges for details of inclusive and exclusive dates.
  result = api_instance.v1_list_payments(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_list_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list payments for. If you specify me, this endpoint returns payments aggregated from all of the business&#39;s locations. | 
 **order** | **String**| The order in which payments are listed in the response. | [optional] 
 **begin_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **Integer**| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 

### Return type

[**Array&lt;V1Payment&gt;**](V1Payment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_list_refunds**
> Array&lt;V1Refund&gt; v1_list_refunds(location_id, opts)

Provides the details for all refunds initiated by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length.

Provides the details for all refunds initiated by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length.

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
  order: "order_example", # String | TThe order in which payments are listed in the response.
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time.
  limit: 56 # Integer | The maximum number of payments to return in a single response. This value cannot exceed 200.
}

begin
  #Provides the details for all refunds initiated by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length.
  result = api_instance.v1_list_refunds(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_list_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list refunds for. | 
 **order** | **String**| TThe order in which payments are listed in the response. | [optional] 
 **begin_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **Integer**| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 

### Return type

[**Array&lt;V1Refund&gt;**](V1Refund.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_list_settlements**
> Array&lt;V1Settlement&gt; v1_list_settlements(location_id, opts)

Provides summary information for all deposits and withdrawals initiated by Square to a merchant's bank account during a date range. Date ranges cannot exceed one year in length.

Provides summary information for all deposits and withdrawals initiated by Square to a merchant's bank account during a date range. Date ranges cannot exceed one year in length. 

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

location_id = "location_id_example" # String | The ID of the location to list settlements for. If you specify me, this endpoint returns payments aggregated from all of the business's locations.

opts = { 
  order: "order_example", # String | TThe order in which payments are listed in the response.
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time.
  limit: 56, # Integer | The maximum number of payments to return in a single response. This value cannot exceed 200.
  status: "status_example" # String | Provide this parameter to retrieve only settlements with a particular status (SENT or FAILED).
}

begin
  #Provides summary information for all deposits and withdrawals initiated by Square to a merchant's bank account during a date range. Date ranges cannot exceed one year in length.
  result = api_instance.v1_list_settlements(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_list_settlements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list settlements for. If you specify me, this endpoint returns payments aggregated from all of the business&#39;s locations. | 
 **order** | **String**| TThe order in which payments are listed in the response. | [optional] 
 **begin_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **Integer**| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 
 **status** | **String**| Provide this parameter to retrieve only settlements with a particular status (SENT or FAILED). | [optional] 

### Return type

[**Array&lt;V1Settlement&gt;**](V1Settlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_retrieve_bank_account**
> V1BankAccount v1_retrieve_bank_account(location_id, bank_account_id)

Provides non-confidential details for a merchant's associated bank account. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.

Provides non-confidential details for a merchant's associated bank account. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.

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

location_id = "location_id_example" # String | The ID of the bank account's associated location.

bank_account_id = "bank_account_id_example" # String | The bank account's Square-issued ID. You obtain this value from Settlement objects returned.


begin
  #Provides non-confidential details for a merchant's associated bank account. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.
  result = api_instance.v1_retrieve_bank_account(location_id, bank_account_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_retrieve_bank_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the bank account&#39;s associated location. | 
 **bank_account_id** | **String**| The bank account&#39;s Square-issued ID. You obtain this value from Settlement objects returned. | 

### Return type

[**V1BankAccount**](V1BankAccount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_retrieve_order**
> V1Order v1_retrieve_order(location_id, order_id)

Provides comprehensive information for a single online store order, including the order's history.

Provides comprehensive information for a single online store order, including the order's history.

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

location_id = "location_id_example" # String | The ID of the order's associated location.

order_id = "order_id_example" # String | The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint


begin
  #Provides comprehensive information for a single online store order, including the order's history.
  result = api_instance.v1_retrieve_order(location_id, order_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_retrieve_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the order&#39;s associated location. | 
 **order_id** | **String**| The order&#39;s Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint | 

### Return type

[**V1Order**](V1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_retrieve_payment**
> V1Payment v1_retrieve_payment(location_id, payment_id)

Provides comprehensive information for a single payment.

Provides comprehensive information for a single payment.

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

location_id = "location_id_example" # String | The ID of the payment's associated location.

payment_id = "payment_id_example" # String | The payment's Square-issued ID. You obtain this value from Payment objects returned by the List Payments endpoint, or Settlement objects returned by the List Settlements endpoint.


begin
  #Provides comprehensive information for a single payment.
  result = api_instance.v1_retrieve_payment(location_id, payment_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_retrieve_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the payment&#39;s associated location. | 
 **payment_id** | **String**| The payment&#39;s Square-issued ID. You obtain this value from Payment objects returned by the List Payments endpoint, or Settlement objects returned by the List Settlements endpoint. | 

### Return type

[**V1Payment**](V1Payment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_retrieve_settlement**
> V1Settlement v1_retrieve_settlement(location_id, settlement_id)

Provides comprehensive information for a single settlement, including the entries that contribute to the settlement's total.

Provides comprehensive information for a single settlement, including the entries that contribute to the settlement's total.

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

location_id = "location_id_example" # String | The ID of the settlements's associated location.

settlement_id = "settlement_id_example" # String | The settlement's Square-issued ID. You obtain this value from Settlement objects returned by the List Settlements endpoint.


begin
  #Provides comprehensive information for a single settlement, including the entries that contribute to the settlement's total.
  result = api_instance.v1_retrieve_settlement(location_id, settlement_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_retrieve_settlement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the settlements&#39;s associated location. | 
 **settlement_id** | **String**| The settlement&#39;s Square-issued ID. You obtain this value from Settlement objects returned by the List Settlements endpoint. | 

### Return type

[**V1Settlement**](V1Settlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_update_order**
> V1Order v1_update_order(location_id, order_id, body)

Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:

Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:

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

location_id = "location_id_example" # String | The ID of the order's associated location.

order_id = "order_id_example" # String | The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint

body = SquareConnect::V1UpdateOrderRequest.new # V1UpdateOrderRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:
  result = api_instance.v1_update_order(location_id, order_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling TransactionsApi->v1_update_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the order&#39;s associated location. | 
 **order_id** | **String**| The order&#39;s Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint | 
 **body** | [**V1UpdateOrderRequest**](V1UpdateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Order**](V1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



