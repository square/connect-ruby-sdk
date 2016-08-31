# SquareConnect::CustomerCardApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer_card**](CustomerCardApi.md#create_customer_card) | **POST** /v2/customers/{customer_id}/cards | CreateCustomerCard
[**delete_customer_card**](CustomerCardApi.md#delete_customer_card) | **DELETE** /v2/customers/{customer_id}/cards/{card_id} | DeleteCustomerCard


# **create_customer_card**
> CreateCustomerCardResponse create_customer_card(authorization, customer_id, body)

CreateCustomerCard

Adds a card on file to an existing customer.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CustomerCardApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

customer_id = "customer_id_example" # String | 

body = SquareConnect::CreateCustomerCardRequest.new # CreateCustomerCardRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCustomerCard
  result = api_instance.create_customer_card(authorization, customer_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerCardApi->create_customer_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customer_id** | **String**|  | 
 **body** | [**CreateCustomerCardRequest**](CreateCustomerCardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateCustomerCardResponse**](CreateCustomerCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_customer_card**
> DeleteCustomerCardResponse delete_customer_card(authorization, customer_id, card_id)

DeleteCustomerCard

Removes a card on file from a customer.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CustomerCardApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

customer_id = "customer_id_example" # String | 

card_id = "card_id_example" # String | 


begin
  #DeleteCustomerCard
  result = api_instance.delete_customer_card(authorization, customer_id, card_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerCardApi->delete_customer_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customer_id** | **String**|  | 
 **card_id** | **String**|  | 

### Return type

[**DeleteCustomerCardResponse**](DeleteCustomerCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



