# SquareConnect::CustomerApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer**](CustomerApi.md#create_customer) | **POST** /v2/customers | CreateCustomer
[**delete_customer**](CustomerApi.md#delete_customer) | **DELETE** /v2/customers/{customer_id} | DeleteCustomer
[**list_customers**](CustomerApi.md#list_customers) | **GET** /v2/customers | ListCustomers
[**retrieve_customer**](CustomerApi.md#retrieve_customer) | **GET** /v2/customers/{customer_id} | RetrieveCustomer
[**update_customer**](CustomerApi.md#update_customer) | **PUT** /v2/customers/{customer_id} | UpdateCustomer


# **create_customer**
> CreateCustomerResponse create_customer(authorization, body)

CreateCustomer

Creates a new customer for a business, which can have associated cards on file.  You must provide __at least one__ of the following values in your request to this endpoint:  - `given_name` - `family_name` - `company_name` - `email_address` - `phone_number`  This endpoint does not accept an idempotency key. If you accidentally create a duplicate customer, you can delete it with the [DeleteCustomer](#endpoint-deletecustomer) endpoint.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CustomerApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::CreateCustomerRequest.new # CreateCustomerRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCustomer
  result = api_instance.create_customer(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerApi->create_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**CreateCustomerRequest**](CreateCustomerRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateCustomerResponse**](CreateCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_customer**
> DeleteCustomerResponse delete_customer(authorization, customer_id)

DeleteCustomer

Deletes a customer from a business, along with any linked cards on file.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CustomerApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

customer_id = "customer_id_example" # String | The ID of the customer to delete.


begin
  #DeleteCustomer
  result = api_instance.delete_customer(authorization, customer_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerApi->delete_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customer_id** | **String**| The ID of the customer to delete. | 

### Return type

[**DeleteCustomerResponse**](DeleteCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_customers**
> ListCustomersResponse list_customers(authorization, opts)

ListCustomers

Lists a business's customers.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CustomerApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

opts = { 
  cursor: "cursor_example" # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
}

begin
  #ListCustomers
  result = api_instance.list_customers(authorization, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerApi->list_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 

### Return type

[**ListCustomersResponse**](ListCustomersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_customer**
> RetrieveCustomerResponse retrieve_customer(authorization, customer_id)

RetrieveCustomer

Returns details for a single customer.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CustomerApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

customer_id = "customer_id_example" # String | The ID of the customer to retrieve.


begin
  #RetrieveCustomer
  result = api_instance.retrieve_customer(authorization, customer_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerApi->retrieve_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customer_id** | **String**| The ID of the customer to retrieve. | 

### Return type

[**RetrieveCustomerResponse**](RetrieveCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_customer**
> UpdateCustomerResponse update_customer(authorization, customer_id, body)

UpdateCustomer

Updates the details of an existing customer.  You cannot edit a customer's cards on file with this endpoint. To make changes to a card on file, you must delete the existing card on file with the [DeleteCustomerCard](#endpoint-deletecustomercard) endpoint, then create a new one with the [CreateCustomerCard](#endpoint-createcustomercard) endpoint.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CustomerApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

customer_id = "customer_id_example" # String | The ID of the customer to update.

body = SquareConnect::UpdateCustomerRequest.new # UpdateCustomerRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateCustomer
  result = api_instance.update_customer(authorization, customer_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerApi->update_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customer_id** | **String**| The ID of the customer to update. | 
 **body** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpdateCustomerResponse**](UpdateCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



