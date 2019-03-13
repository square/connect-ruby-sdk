# SquareConnect::LaborApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_break_type**](LaborApi.md#create_break_type) | **POST** /v2/labor/break-types | CreateBreakType
[**create_shift**](LaborApi.md#create_shift) | **POST** /v2/labor/shifts | CreateShift
[**delete_break_type**](LaborApi.md#delete_break_type) | **DELETE** /v2/labor/break-types/{id} | DeleteBreakType
[**delete_shift**](LaborApi.md#delete_shift) | **DELETE** /v2/labor/shifts/{id} | DeleteShift
[**get_break_type**](LaborApi.md#get_break_type) | **GET** /v2/labor/break-types/{id} | GetBreakType
[**get_employee_wage**](LaborApi.md#get_employee_wage) | **GET** /v2/labor/employee-wages/{id} | GetEmployeeWage
[**get_shift**](LaborApi.md#get_shift) | **GET** /v2/labor/shifts/{id} | GetShift
[**list_break_types**](LaborApi.md#list_break_types) | **GET** /v2/labor/break-types | ListBreakTypes
[**list_employee_wages**](LaborApi.md#list_employee_wages) | **GET** /v2/labor/employee-wages | ListEmployeeWages
[**list_workweek_configs**](LaborApi.md#list_workweek_configs) | **GET** /v2/labor/workweek-configs | ListWorkweekConfigs
[**search_shifts**](LaborApi.md#search_shifts) | **POST** /v2/labor/shifts/search | SearchShifts
[**update_break_type**](LaborApi.md#update_break_type) | **PUT** /v2/labor/break-types/{id} | UpdateBreakType
[**update_shift**](LaborApi.md#update_shift) | **PUT** /v2/labor/shifts/{id} | UpdateShift
[**update_workweek_config**](LaborApi.md#update_workweek_config) | **PUT** /v2/labor/workweek-configs/{id} | UpdateWorkweekConfig


# **create_break_type**
> CreateBreakTypeResponse create_break_type(body)

CreateBreakType

Creates a new `BreakType`.   A `BreakType` is a template for creating `Break` objects.  You must provide the following values in your request to this endpoint:  - `location_id` - `break_name` - `expected_duration` - `is_paid`  You can only have 3 `BreakType` instances per location. If you attempt to add a 4th `BreakType` for a location, an `INVALID_REQUEST_ERROR` \"Exceeded limit of 3 breaks per location.\" is returned.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

body = SquareConnect::CreateBreakTypeRequest.new # CreateBreakTypeRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateBreakType
  result = api_instance.create_break_type(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->create_break_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateBreakTypeRequest**](CreateBreakTypeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateBreakTypeResponse**](CreateBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_shift**
> CreateShiftResponse create_shift(body)

CreateShift

Creates a new `Shift`.   A `Shift` represents a complete work day for a single employee.  You must provide the following values in your request to this endpoint:  - `location_id` - `employee_id` - `start_at`  An attempt to create a new `Shift` can result in a `BAD_REQUEST` error when: - The `status` of the new `Shift` is `OPEN` and the employee has another  shift with an `OPEN` status.  - The `start_at` date is in the future - the `start_at` or `end_at` overlaps another shift for the same employee - If `Break`s are set in the request, a break `start_at` must not be before the `Shift.start_at`. A break `end_at` must not be after the `Shift.end_at`

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

body = SquareConnect::CreateShiftRequest.new # CreateShiftRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateShift
  result = api_instance.create_shift(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->create_shift: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateShiftRequest**](CreateShiftRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateShiftResponse**](CreateShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_break_type**
> DeleteBreakTypeResponse delete_break_type(id)

DeleteBreakType

Deletes an existing `BreakType`.   A `BreakType` can be deleted even if it is referenced from a `Shift`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | UUID for the `BreakType` being deleted.


begin
  #DeleteBreakType
  result = api_instance.delete_break_type(id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->delete_break_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the &#x60;BreakType&#x60; being deleted. | 

### Return type

[**DeleteBreakTypeResponse**](DeleteBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_shift**
> DeleteShiftResponse delete_shift(id)

DeleteShift

Deletes a `Shift`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | UUID for the `Shift` being deleted.


begin
  #DeleteShift
  result = api_instance.delete_shift(id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->delete_shift: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the &#x60;Shift&#x60; being deleted. | 

### Return type

[**DeleteShiftResponse**](DeleteShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_break_type**
> GetBreakTypeResponse get_break_type(id)

GetBreakType

Returns a single `BreakType` specified by id.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | UUID for the `BreakType` being retrieved.


begin
  #GetBreakType
  result = api_instance.get_break_type(id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->get_break_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the &#x60;BreakType&#x60; being retrieved. | 

### Return type

[**GetBreakTypeResponse**](GetBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_employee_wage**
> GetEmployeeWageResponse get_employee_wage(id)

GetEmployeeWage

Returns a single `EmployeeWage` specified by id.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | UUID for the `EmployeeWage` being retrieved.


begin
  #GetEmployeeWage
  result = api_instance.get_employee_wage(id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->get_employee_wage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the &#x60;EmployeeWage&#x60; being retrieved. | 

### Return type

[**GetEmployeeWageResponse**](GetEmployeeWageResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_shift**
> GetShiftResponse get_shift(id)

GetShift

Returns a single `Shift` specified by id.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | UUID for the `Shift` being retrieved.


begin
  #GetShift
  result = api_instance.get_shift(id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->get_shift: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the &#x60;Shift&#x60; being retrieved. | 

### Return type

[**GetShiftResponse**](GetShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_break_types**
> ListBreakTypesResponse list_break_types(opts)

ListBreakTypes

Returns a paginated list of `BreakType` instances for a business.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

opts = { 
  location_id: "location_id_example", # String | Filter Break Types returned to only those that are associated with the specified location.
  limit: 56, # Integer | Maximum number of Break Types to return per page. Can range between 1 and 200. The default is the maximum at 200.
  cursor: "cursor_example" # String | Pointer to the next page of Break Type results to fetch.
}

begin
  #ListBreakTypes
  result = api_instance.list_break_types(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->list_break_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| Filter Break Types returned to only those that are associated with the specified location. | [optional] 
 **limit** | **Integer**| Maximum number of Break Types to return per page. Can range between 1 and 200. The default is the maximum at 200. | [optional] 
 **cursor** | **String**| Pointer to the next page of Break Type results to fetch. | [optional] 

### Return type

[**ListBreakTypesResponse**](ListBreakTypesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_employee_wages**
> ListEmployeeWagesResponse list_employee_wages(opts)

ListEmployeeWages

Returns a paginated list of `EmployeeWage` instances for a business.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

opts = { 
  employee_id: "employee_id_example", # String | Filter wages returned to only those that are associated with the specified employee.
  limit: 56, # Integer | Maximum number of Employee Wages to return per page. Can range between 1 and 200. The default is the maximum at 200.
  cursor: "cursor_example" # String | Pointer to the next page of Employee Wage results to fetch.
}

begin
  #ListEmployeeWages
  result = api_instance.list_employee_wages(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->list_employee_wages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **String**| Filter wages returned to only those that are associated with the specified employee. | [optional] 
 **limit** | **Integer**| Maximum number of Employee Wages to return per page. Can range between 1 and 200. The default is the maximum at 200. | [optional] 
 **cursor** | **String**| Pointer to the next page of Employee Wage results to fetch. | [optional] 

### Return type

[**ListEmployeeWagesResponse**](ListEmployeeWagesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_workweek_configs**
> ListWorkweekConfigsResponse list_workweek_configs(opts)

ListWorkweekConfigs

Returns a list of `WorkweekConfig` instances for a business.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

opts = { 
  limit: 56, # Integer | Maximum number of Workweek Configs to return per page.
  cursor: "cursor_example" # String | Pointer to the next page of Workweek Config results to fetch.
}

begin
  #ListWorkweekConfigs
  result = api_instance.list_workweek_configs(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->list_workweek_configs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Maximum number of Workweek Configs to return per page. | [optional] 
 **cursor** | **String**| Pointer to the next page of Workweek Config results to fetch. | [optional] 

### Return type

[**ListWorkweekConfigsResponse**](ListWorkweekConfigsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_shifts**
> SearchShiftsResponse search_shifts(body)

SearchShifts

Returns a paginated list of `Shift` records for a business.  The list to be returned can be filtered by: - Location IDs **and** - employee IDs **and** - shift status (`OPEN`, `CLOSED`) **and** - shift start **and** - shift end **and** - work day details  The list can be sorted by: - `start_at` - `end_at` - `created_at` - `updated_at`

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

body = SquareConnect::SearchShiftsRequest.new # SearchShiftsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #SearchShifts
  result = api_instance.search_shifts(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->search_shifts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SearchShiftsRequest**](SearchShiftsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SearchShiftsResponse**](SearchShiftsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_break_type**
> UpdateBreakTypeResponse update_break_type(id, body)

UpdateBreakType

Updates an existing `BreakType`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | UUID for the `BreakType` being updated.

body = SquareConnect::UpdateBreakTypeRequest.new # UpdateBreakTypeRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateBreakType
  result = api_instance.update_break_type(id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->update_break_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the &#x60;BreakType&#x60; being updated. | 
 **body** | [**UpdateBreakTypeRequest**](UpdateBreakTypeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpdateBreakTypeResponse**](UpdateBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_shift**
> UpdateShiftResponse update_shift(id, body)

UpdateShift

Updates an existing `Shift`.   When adding a `Break` to a `Shift`, any earlier `Breaks` in the `Shift` have  the `end_at` property set to a valid RFC-3339 datetime string.   When closing a `Shift`, all `Break` instances in the shift must be complete with `end_at` set on each `Break`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | ID of the object being updated.

body = SquareConnect::UpdateShiftRequest.new # UpdateShiftRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateShift
  result = api_instance.update_shift(id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->update_shift: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the object being updated. | 
 **body** | [**UpdateShiftRequest**](UpdateShiftRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpdateShiftResponse**](UpdateShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_workweek_config**
> UpdateWorkweekConfigResponse update_workweek_config(id, body)

UpdateWorkweekConfig

Updates a `WorkweekConfig`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::LaborApi.new

id = "id_example" # String | UUID for the `WorkweekConfig` object being updated.

body = SquareConnect::UpdateWorkweekConfigRequest.new # UpdateWorkweekConfigRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateWorkweekConfig
  result = api_instance.update_workweek_config(id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling LaborApi->update_workweek_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the &#x60;WorkweekConfig&#x60; object being updated. | 
 **body** | [**UpdateWorkweekConfigRequest**](UpdateWorkweekConfigRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpdateWorkweekConfigResponse**](UpdateWorkweekConfigResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



