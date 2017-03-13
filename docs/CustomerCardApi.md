# SquareConnect::CustomerCardApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_customer_card**](CustomerCardApi.md#create_customer_card) | **POST** /v2/customers/{customer_id}/cards | CreateCustomerCard
[**delete_customer_card**](CustomerCardApi.md#delete_customer_card) | **DELETE** /v2/customers/{customer_id}/cards/{card_id} | DeleteCustomerCard


# **create_customer_card**
> CreateCustomerCardResponse create_customer_card(customer_id, body)

CreateCustomerCard

Adds a card on file to an existing customer.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomerCardApi.new

customer_id = "customer_id_example" # String | The ID of the customer to link the card on file to.

body = SquareConnect::CreateCustomerCardRequest.new # CreateCustomerCardRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCustomerCard
  result = api_instance.create_customer_card(customer_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerCardApi->create_customer_card: #{e}"
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

api_instance = SquareConnect::CustomerCardApi.new

customer_id = "customer_id_example" # String | The ID of the customer that the card on file belongs to.

card_id = "card_id_example" # String | The ID of the card on file to delete.


begin
  #DeleteCustomerCard
  result = api_instance.delete_customer_card(customer_id, card_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CustomerCardApi->delete_customer_card: #{e}"
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



