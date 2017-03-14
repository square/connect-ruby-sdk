# SquareConnect::LocationApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_locations**](LocationApi.md#list_locations) | **GET** /v2/locations | ListLocations
[**v1_list_locations**](LocationApi.md#v1_list_locations) | **GET** /v1/me/locations | Provides details for a business&#39;s locations, including their IDs.
[**v1_retrieve_business**](LocationApi.md#v1_retrieve_business) | **GET** /v1/me | Get a business&#39;s information.


# **list_locations**
> ListLocationsResponse list_locations

ListLocations

Provides the details for all of a business's locations.  Most other Connect API endpoints have a required `location_id` path parameter. The `id` field of the [`Location`](#type-location) objects returned by this endpoint correspond to that `location_id` parameter.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LocationApi.new

begin
  #ListLocations
  result = api_instance.list_locations
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LocationApi->list_locations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListLocationsResponse**](ListLocationsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_list_locations**
> Array&lt;V1Merchant&gt; v1_list_locations

Provides details for a business's locations, including their IDs.

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

api_instance = SquareConnect::LocationApi.new

begin
  #Provides details for a business's locations, including their IDs.
  result = api_instance.v1_list_locations
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LocationApi->v1_list_locations: #{e}"
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



# **v1_retrieve_business**
> V1Merchant v1_retrieve_business

Get a business's information.

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

api_instance = SquareConnect::LocationApi.new

begin
  #Get a business's information.
  result = api_instance.v1_retrieve_business
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LocationApi->v1_retrieve_business: #{e}"
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



