# SquareConnect::CustomersApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer**](CustomersApi.md#create_customer) | **POST** /v2/customers | CreateCustomer
[**create_customer_card**](CustomersApi.md#create_customer_card) | **POST** /v2/customers/{customer_id}/cards | CreateCustomerCard
[**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /v2/customers/{customer_id} | DeleteCustomer
[**delete_customer_card**](CustomersApi.md#delete_customer_card) | **DELETE** /v2/customers/{customer_id}/cards/{card_id} | DeleteCustomerCard
[**list_customers**](CustomersApi.md#list_customers) | **GET** /v2/customers | ListCustomers
[**retrieve_customer**](CustomersApi.md#retrieve_customer) | **GET** /v2/customers/{customer_id} | RetrieveCustomer
[**search_customers**](CustomersApi.md#search_customers) | **POST** /v2/customers/search | SearchCustomers
[**update_customer**](CustomersApi.md#update_customer) | **PUT** /v2/customers/{customer_id} | UpdateCustomer


# **create_customer**
> CreateCustomerResponse create_customer(body)

CreateCustomer

Creates a new customer for a business, which can have associated cards on file.  You must provide __at least one__ of the following values in your request to this endpoint:  - `given_name` - `family_name` - `company_name` - `email_address` - `phone_number`  This endpoint does not accept an idempotency key. If you accidentally create a duplicate customer, you can delete it with the [DeleteCustomer](#endpoint-deletecustomer) endpoint.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

body = SquareConnect::CreateCustomerRequest.new # CreateCustomerRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCustomer
  result = api_instance.create_customer(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->create_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCustomerRequest**](CreateCustomerRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateCustomerResponse**](CreateCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_customer_card**
> CreateCustomerCardResponse create_customer_card(customer_id, body)

CreateCustomerCard

Adds a card on file to an existing customer. In the United States Square takes care of automatically updating any cards on file that might have expired since you first attached them to a customer.  As with charges, calls to `CreateCustomerCard` are idempotent. Multiple calls with the same card nonce return the same card record that was created with the provided nonce during the _first_ call.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

customer_id = "customer_id_example" # String | The ID of the customer to link the card on file to.

body = SquareConnect::CreateCustomerCardRequest.new # CreateCustomerCardRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCustomerCard
  result = api_instance.create_customer_card(customer_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->create_customer_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The ID of the customer to link the card on file to. | 
 **body** | [**CreateCustomerCardRequest**](CreateCustomerCardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateCustomerCardResponse**](CreateCustomerCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_customer**
> DeleteCustomerResponse delete_customer(customer_id)

DeleteCustomer

Deletes a customer from a business, along with any linked cards on file. When two profiles are merged into a single profile, that profile is assigned a new `customer_id`. You must use the new `customer_id` to delete merged profiles.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

customer_id = "customer_id_example" # String | The ID of the customer to delete.


begin
  #DeleteCustomer
  result = api_instance.delete_customer(customer_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->delete_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The ID of the customer to delete. | 

### Return type

[**DeleteCustomerResponse**](DeleteCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_customer_card**
> DeleteCustomerCardResponse delete_customer_card(customer_id, card_id)

DeleteCustomerCard

Removes a card on file from a customer.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

customer_id = "customer_id_example" # String | The ID of the customer that the card on file belongs to.

card_id = "card_id_example" # String | The ID of the card on file to delete.


begin
  #DeleteCustomerCard
  result = api_instance.delete_customer_card(customer_id, card_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->delete_customer_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The ID of the customer that the card on file belongs to. | 
 **card_id** | **String**| The ID of the card on file to delete. | 

### Return type

[**DeleteCustomerCardResponse**](DeleteCustomerCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_customers**
> ListCustomersResponse list_customers(opts)

ListCustomers

Lists a business's customers.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

opts = { 
  cursor: "cursor_example", # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
  sort_field: "sort_field_example", # String | Indicates how Customers should be sorted. Default: `DEFAULT`. See [CustomerSortField](#type-customersortfield) for possible values.
  sort_order: "sort_order_example" # String | Indicates whether Customers should be sorted in ascending (`ASC`) or descending (`DESC`) order. Default: `ASC`. See [SortOrder](#type-sortorder) for possible values.
}

begin
  #ListCustomers
  result = api_instance.list_customers(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->list_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 
 **sort_field** | **String**| Indicates how Customers should be sorted. Default: &#x60;DEFAULT&#x60;. See [CustomerSortField](#type-customersortfield) for possible values. | [optional] 
 **sort_order** | **String**| Indicates whether Customers should be sorted in ascending (&#x60;ASC&#x60;) or descending (&#x60;DESC&#x60;) order. Default: &#x60;ASC&#x60;. See [SortOrder](#type-sortorder) for possible values. | [optional] 

### Return type

[**ListCustomersResponse**](ListCustomersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_customer**
> RetrieveCustomerResponse retrieve_customer(customer_id)

RetrieveCustomer

Returns details for a single customer.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

customer_id = "customer_id_example" # String | The ID of the customer to retrieve.


begin
  #RetrieveCustomer
  result = api_instance.retrieve_customer(customer_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->retrieve_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The ID of the customer to retrieve. | 

### Return type

[**RetrieveCustomerResponse**](RetrieveCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_customers**
> SearchCustomersResponse search_customers(body)

SearchCustomers

Searches the customer profiles associated with a Square account. Calling SearchCustomers without an explicit query parameter returns all customer profiles ordered alphabetically based on `given_name` and `family_name`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

body = SquareConnect::SearchCustomersRequest.new # SearchCustomersRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #SearchCustomers
  result = api_instance.search_customers(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->search_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SearchCustomersRequest**](SearchCustomersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SearchCustomersResponse**](SearchCustomersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_customer**
> UpdateCustomerResponse update_customer(customer_id, body)

UpdateCustomer

Updates the details of an existing customer. When two profiles are merged into a single profile, that profile is assigned a new `customer_id`. You must use the new `customer_id` to update merged profiles.  You cannot edit a customer's cards on file with this endpoint. To make changes to a card on file, you must delete the existing card on file with the [DeleteCustomerCard](#endpoint-deletecustomercard) endpoint, then create a new one with the [CreateCustomerCard](#endpoint-createcustomercard) endpoint.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

customer_id = "customer_id_example" # String | The ID of the customer to update.

body = SquareConnect::UpdateCustomerRequest.new # UpdateCustomerRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateCustomer
  result = api_instance.update_customer(customer_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomersApi->update_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| The ID of the customer to update. | 
 **body** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpdateCustomerResponse**](UpdateCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



