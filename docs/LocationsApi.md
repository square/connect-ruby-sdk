# SquareConnect::LocationsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_locations**](LocationsApi.md#list_locations) | **GET** /v2/locations | ListLocations


# **list_locations**
> ListLocationsResponse list_locations(authorization)

ListLocations

Provides the details for all of a business's locations.  Most other Connect API endpoints have a required `location_id` path parameter. The `id` field of the [`Location`](#type-location) objects returned by this endpoint correspond to that `location_id` parameter.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::LocationsApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.


begin
  #ListLocations
  result = api_instance.list_locations(authorization)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LocationsApi->list_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 

### Return type

[**ListLocationsResponse**](ListLocationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



