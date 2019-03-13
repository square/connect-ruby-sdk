# SquareConnect::V1LocationsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_locations**](V1LocationsApi.md#list_locations) | **GET** /v1/me/locations | ListLocations
[**retrieve_business**](V1LocationsApi.md#retrieve_business) | **GET** /v1/me | RetrieveBusiness


# **list_locations**
> Array&lt;V1Merchant&gt; list_locations

ListLocations

Provides details for a business's locations, including their IDs.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1LocationsApi.new

begin
  #ListLocations
  result = api_instance.list_locations
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1LocationsApi->list_locations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;V1Merchant&gt;**](V1Merchant.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_business**
> V1Merchant retrieve_business

RetrieveBusiness

Get a business's information.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1LocationsApi.new

begin
  #RetrieveBusiness
  result = api_instance.retrieve_business
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1LocationsApi->retrieve_business: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1Merchant**](V1Merchant.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



