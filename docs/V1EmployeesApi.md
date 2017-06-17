# SquareConnect::V1EmployeesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_employee**](V1EmployeesApi.md#create_employee) | **POST** /v1/me/employees | Creates an employee for a business.
[**create_employee_role**](V1EmployeesApi.md#create_employee_role) | **POST** /v1/me/roles | Creates an employee role you can then assign to employees.
[**create_timecard**](V1EmployeesApi.md#create_timecard) | **POST** /v1/me/timecards | Creates a timecard for an employee. Each timecard corresponds to a single shift.
[**delete_timecard**](V1EmployeesApi.md#delete_timecard) | **DELETE** /v1/me/timecards/{timecard_id} | Deletes a timecard. Deleted timecards are still accessible from Connect API endpoints, but the value of their deleted field is set to true. See Handling deleted timecards for more information.
[**list_cash_drawer_shifts**](V1EmployeesApi.md#list_cash_drawer_shifts) | **GET** /v1/{location_id}/cash-drawer-shifts | Provides the details for all of a location&#39;s cash drawer shifts during a date range. The date range you specify cannot exceed 90 days.
[**list_employee_roles**](V1EmployeesApi.md#list_employee_roles) | **GET** /v1/me/roles | Provides summary information for all of a business&#39;s employee roles.
[**list_employees**](V1EmployeesApi.md#list_employees) | **GET** /v1/me/employees | Provides summary information for all of a business&#39;s employees.
[**list_timecard_events**](V1EmployeesApi.md#list_timecard_events) | **GET** /v1/me/timecards/{timecard_id}/events | Provides summary information for all events associated with a particular timecard.
[**list_timecards**](V1EmployeesApi.md#list_timecards) | **GET** /v1/me/timecards | Provides summary information for all of a business&#39;s employee timecards.
[**retrieve_cash_drawer_shift**](V1EmployeesApi.md#retrieve_cash_drawer_shift) | **GET** /v1/{location_id}/cash-drawer-shifts/{shift_id} | Provides the details for a single cash drawer shift, including all events that occurred during the shift.
[**retrieve_employee**](V1EmployeesApi.md#retrieve_employee) | **GET** /v1/me/employees/{employee_id} | Provides the details for a single employee.
[**retrieve_employee_role**](V1EmployeesApi.md#retrieve_employee_role) | **GET** /v1/me/roles/{role_id} | Provides the details for a single employee role.
[**retrieve_timecard**](V1EmployeesApi.md#retrieve_timecard) | **GET** /v1/me/timecards/{timecard_id} | Provides the details for a single timecard.
[**update_employee**](V1EmployeesApi.md#update_employee) | **PUT** /v1/me/employees/{employee_id} | V1 UpdateEmployee
[**update_employee_role**](V1EmployeesApi.md#update_employee_role) | **PUT** /v1/me/roles/{role_id} | Modifies the details of an employee role.
[**update_timecard**](V1EmployeesApi.md#update_timecard) | **PUT** /v1/me/timecards/{timecard_id} | Modifies a timecard&#39;s details. This creates an API_EDIT event for the timecard. You can view a timecard&#39;s event history with the List Timecard Events endpoint.


# **create_employee**
> V1Employee create_employee(body)

Creates an employee for a business.

Creates an employee for a business.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

body = SquareConnect::V1Employee.new # V1Employee | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Creates an employee for a business.
  result = api_instance.create_employee(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->create_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1Employee**](V1Employee.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Employee**](V1Employee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_employee_role**
> V1EmployeeRole create_employee_role(employee_role)

Creates an employee role you can then assign to employees.

Creates an employee role you can then assign to employees.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

employee_role = SquareConnect::V1EmployeeRole.new # V1EmployeeRole | An EmployeeRole object with a name and permissions, and an optional owner flag.


begin
  #Creates an employee role you can then assign to employees.
  result = api_instance.create_employee_role(employee_role)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->create_employee_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_role** | [**V1EmployeeRole**](V1EmployeeRole.md)| An EmployeeRole object with a name and permissions, and an optional owner flag. | 

### Return type

[**V1EmployeeRole**](V1EmployeeRole.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_timecard**
> V1Timecard create_timecard(body)

Creates a timecard for an employee. Each timecard corresponds to a single shift.

Creates a timecard for an employee. Each timecard corresponds to a single shift.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

body = SquareConnect::V1Timecard.new # V1Timecard | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Creates a timecard for an employee. Each timecard corresponds to a single shift.
  result = api_instance.create_timecard(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->create_timecard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1Timecard**](V1Timecard.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Timecard**](V1Timecard.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_timecard**
> Object delete_timecard(timecard_id)

Deletes a timecard. Deleted timecards are still accessible from Connect API endpoints, but the value of their deleted field is set to true. See Handling deleted timecards for more information.

Deletes a timecard. Deleted timecards are still accessible from Connect API endpoints, but the value of their deleted field is set to true. See Handling deleted timecards for more information.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

timecard_id = "timecard_id_example" # String | The ID of the timecard to delete.


begin
  #Deletes a timecard. Deleted timecards are still accessible from Connect API endpoints, but the value of their deleted field is set to true. See Handling deleted timecards for more information.
  result = api_instance.delete_timecard(timecard_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->delete_timecard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timecard_id** | **String**| The ID of the timecard to delete. | 

### Return type

**Object**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_cash_drawer_shifts**
> Array&lt;V1CashDrawerShift&gt; list_cash_drawer_shifts(location_id, opts)

Provides the details for all of a location's cash drawer shifts during a date range. The date range you specify cannot exceed 90 days.

Provides the details for all of a location's cash drawer shifts during a date range. The date range you specify cannot exceed 90 days.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

location_id = "location_id_example" # String | The ID of the location to list cash drawer shifts for.

opts = { 
  order: "order_example", # String | The order in which cash drawer shifts are listed in the response, based on their created_at field. Default value: ASC
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in ISO 8601 format. Default value: The current time minus 90 days.
  end_time: "end_time_example" # String | The beginning of the requested reporting period, in ISO 8601 format. Default value: The current time.
}

begin
  #Provides the details for all of a location's cash drawer shifts during a date range. The date range you specify cannot exceed 90 days.
  result = api_instance.list_cash_drawer_shifts(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->list_cash_drawer_shifts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list cash drawer shifts for. | 
 **order** | **String**| The order in which cash drawer shifts are listed in the response, based on their created_at field. Default value: ASC | [optional] 
 **begin_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. Default value: The current time minus 90 days. | [optional] 
 **end_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. Default value: The current time. | [optional] 

### Return type

[**Array&lt;V1CashDrawerShift&gt;**](V1CashDrawerShift.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_employee_roles**
> Array&lt;V1EmployeeRole&gt; list_employee_roles(opts)

Provides summary information for all of a business's employee roles.

Provides summary information for all of a business's employee roles.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

opts = { 
  order: "order_example", # String | The order in which employees are listed in the response, based on their created_at field.Default value: ASC 
  limit: 56, # Integer | The maximum integer number of employee entities to return in a single response. Default 100, maximum 200.
  cursor: "cursor_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #Provides summary information for all of a business's employee roles.
  result = api_instance.list_employee_roles(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->list_employee_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| The order in which employees are listed in the response, based on their created_at field.Default value: ASC  | [optional] 
 **limit** | **Integer**| The maximum integer number of employee entities to return in a single response. Default 100, maximum 200. | [optional] 
 **cursor** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1EmployeeRole&gt;**](V1EmployeeRole.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_employees**
> Array&lt;V1Employee&gt; list_employees(opts)

Provides summary information for all of a business's employees.

Provides summary information for all of a business's employees.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

opts = { 
  order: "order_example", # String | The order in which employees are listed in the response, based on their created_at field.      Default value: ASC 
  begin_updated_at: "begin_updated_at_example", # String | If filtering results by their updated_at field, the beginning of the requested reporting period, in ISO 8601 format
  end_updated_at: "end_updated_at_example", # String | If filtering results by there updated_at field, the end of the requested reporting period, in ISO 8601 format.
  begin_created_at: "begin_created_at_example", # String | If filtering results by their created_at field, the beginning of the requested reporting period, in ISO 8601 format.
  end_created_at: "end_created_at_example", # String | If filtering results by their created_at field, the end of the requested reporting period, in ISO 8601 format.
  status: "status_example", # String | If provided, the endpoint returns only employee entities with the specified status (ACTIVE or INACTIVE).
  external_id: "external_id_example", # String | If provided, the endpoint returns only employee entities with the specified external_id.
  limit: 56 # Integer | The maximum integer number of employee entities to return in a single response. Default 100, maximum 200.
}

begin
  #Provides summary information for all of a business's employees.
  result = api_instance.list_employees(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->list_employees: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| The order in which employees are listed in the response, based on their created_at field.      Default value: ASC  | [optional] 
 **begin_updated_at** | **String**| If filtering results by their updated_at field, the beginning of the requested reporting period, in ISO 8601 format | [optional] 
 **end_updated_at** | **String**| If filtering results by there updated_at field, the end of the requested reporting period, in ISO 8601 format. | [optional] 
 **begin_created_at** | **String**| If filtering results by their created_at field, the beginning of the requested reporting period, in ISO 8601 format. | [optional] 
 **end_created_at** | **String**| If filtering results by their created_at field, the end of the requested reporting period, in ISO 8601 format. | [optional] 
 **status** | **String**| If provided, the endpoint returns only employee entities with the specified status (ACTIVE or INACTIVE). | [optional] 
 **external_id** | **String**| If provided, the endpoint returns only employee entities with the specified external_id. | [optional] 
 **limit** | **Integer**| The maximum integer number of employee entities to return in a single response. Default 100, maximum 200. | [optional] 

### Return type

[**Array&lt;V1Employee&gt;**](V1Employee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_timecard_events**
> Array&lt;V1TimecardEvent&gt; list_timecard_events(timecard_id)

Provides summary information for all events associated with a particular timecard.

Provides summary information for all events associated with a particular timecard.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

timecard_id = "timecard_id_example" # String | The ID of the timecard to list events for.


begin
  #Provides summary information for all events associated with a particular timecard.
  result = api_instance.list_timecard_events(timecard_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->list_timecard_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timecard_id** | **String**| The ID of the timecard to list events for. | 

### Return type

[**Array&lt;V1TimecardEvent&gt;**](V1TimecardEvent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_timecards**
> Array&lt;V1Timecard&gt; list_timecards(opts)

Provides summary information for all of a business's employee timecards.

Provides summary information for all of a business's employee timecards.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

opts = { 
  order: "order_example", # String | The order in which timecards are listed in the response, based on their created_at field.
  employee_id: "employee_id_example", # String | If provided, the endpoint returns only timecards for the employee with the specified ID.
  begin_clockin_time: "begin_clockin_time_example", # String | If filtering results by their clockin_time field, the beginning of the requested reporting period, in ISO 8601 format.
  end_clockin_time: "end_clockin_time_example", # String | If filtering results by their clockin_time field, the end of the requested reporting period, in ISO 8601 format.
  begin_clockout_time: "begin_clockout_time_example", # String | If filtering results by their clockout_time field, the beginning of the requested reporting period, in ISO 8601 format.
  end_clockout_time: "end_clockout_time_example", # String | If filtering results by their clockout_time field, the end of the requested reporting period, in ISO 8601 format.
  begin_updated_at: "begin_updated_at_example", # String | If filtering results by their updated_at field, the beginning of the requested reporting period, in ISO 8601 format.
  end_updated_at: "end_updated_at_example", # String | If filtering results by their updated_at field, the end of the requested reporting period, in ISO 8601 format.
  deleted: true, # BOOLEAN | If true, only deleted timecards are returned. If false, only valid timecards are returned.If you don't provide this parameter, both valid and deleted timecards are returned.
  limit: 56, # Integer | The maximum integer number of employee entities to return in a single response. Default 100, maximum 200.
  cursor: "cursor_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #Provides summary information for all of a business's employee timecards.
  result = api_instance.list_timecards(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->list_timecards: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| The order in which timecards are listed in the response, based on their created_at field. | [optional] 
 **employee_id** | **String**| If provided, the endpoint returns only timecards for the employee with the specified ID. | [optional] 
 **begin_clockin_time** | **String**| If filtering results by their clockin_time field, the beginning of the requested reporting period, in ISO 8601 format. | [optional] 
 **end_clockin_time** | **String**| If filtering results by their clockin_time field, the end of the requested reporting period, in ISO 8601 format. | [optional] 
 **begin_clockout_time** | **String**| If filtering results by their clockout_time field, the beginning of the requested reporting period, in ISO 8601 format. | [optional] 
 **end_clockout_time** | **String**| If filtering results by their clockout_time field, the end of the requested reporting period, in ISO 8601 format. | [optional] 
 **begin_updated_at** | **String**| If filtering results by their updated_at field, the beginning of the requested reporting period, in ISO 8601 format. | [optional] 
 **end_updated_at** | **String**| If filtering results by their updated_at field, the end of the requested reporting period, in ISO 8601 format. | [optional] 
 **deleted** | **BOOLEAN**| If true, only deleted timecards are returned. If false, only valid timecards are returned.If you don&#39;t provide this parameter, both valid and deleted timecards are returned. | [optional] 
 **limit** | **Integer**| The maximum integer number of employee entities to return in a single response. Default 100, maximum 200. | [optional] 
 **cursor** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1Timecard&gt;**](V1Timecard.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_cash_drawer_shift**
> V1CashDrawerShift retrieve_cash_drawer_shift(location_id, shift_id)

Provides the details for a single cash drawer shift, including all events that occurred during the shift.

Provides the details for a single cash drawer shift, including all events that occurred during the shift.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

location_id = "location_id_example" # String | The ID of the location to list cash drawer shifts for.

shift_id = "shift_id_example" # String | The shift's ID.


begin
  #Provides the details for a single cash drawer shift, including all events that occurred during the shift.
  result = api_instance.retrieve_cash_drawer_shift(location_id, shift_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->retrieve_cash_drawer_shift: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list cash drawer shifts for. | 
 **shift_id** | **String**| The shift&#39;s ID. | 

### Return type

[**V1CashDrawerShift**](V1CashDrawerShift.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_employee**
> V1Employee retrieve_employee(employee_id)

Provides the details for a single employee.

Provides the details for a single employee.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

employee_id = "employee_id_example" # String | The employee's ID.


begin
  #Provides the details for a single employee.
  result = api_instance.retrieve_employee(employee_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->retrieve_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **String**| The employee&#39;s ID. | 

### Return type

[**V1Employee**](V1Employee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_employee_role**
> V1EmployeeRole retrieve_employee_role(role_id)

Provides the details for a single employee role.

Provides the details for a single employee role.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

role_id = "role_id_example" # String | The role's ID.


begin
  #Provides the details for a single employee role.
  result = api_instance.retrieve_employee_role(role_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->retrieve_employee_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| The role&#39;s ID. | 

### Return type

[**V1EmployeeRole**](V1EmployeeRole.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_timecard**
> V1Timecard retrieve_timecard(timecard_id)

Provides the details for a single timecard.

Provides the details for a single timecard.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

timecard_id = "timecard_id_example" # String | The timecard's ID.


begin
  #Provides the details for a single timecard.
  result = api_instance.retrieve_timecard(timecard_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->retrieve_timecard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timecard_id** | **String**| The timecard&#39;s ID. | 

### Return type

[**V1Timecard**](V1Timecard.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_employee**
> V1Employee update_employee(employee_id, body)

V1 UpdateEmployee

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

employee_id = "employee_id_example" # String | The ID of the role to modify.

body = SquareConnect::V1Employee.new # V1Employee | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #V1 UpdateEmployee
  result = api_instance.update_employee(employee_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->update_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **String**| The ID of the role to modify. | 
 **body** | [**V1Employee**](V1Employee.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Employee**](V1Employee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_employee_role**
> V1EmployeeRole update_employee_role(role_id, body)

Modifies the details of an employee role.

Modifies the details of an employee role.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

role_id = "role_id_example" # String | The ID of the role to modify.

body = SquareConnect::V1EmployeeRole.new # V1EmployeeRole | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Modifies the details of an employee role.
  result = api_instance.update_employee_role(role_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->update_employee_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| The ID of the role to modify. | 
 **body** | [**V1EmployeeRole**](V1EmployeeRole.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1EmployeeRole**](V1EmployeeRole.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_timecard**
> V1Timecard update_timecard(timecard_id, body)

Modifies a timecard's details. This creates an API_EDIT event for the timecard. You can view a timecard's event history with the List Timecard Events endpoint.

Modifies a timecard's details. This creates an API_EDIT event for the timecard. You can view a timecard's event history with the List Timecard Events endpoint.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1EmployeesApi.new

timecard_id = "timecard_id_example" # String | TThe ID of the timecard to modify.

body = SquareConnect::V1Timecard.new # V1Timecard | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #Modifies a timecard's details. This creates an API_EDIT event for the timecard. You can view a timecard's event history with the List Timecard Events endpoint.
  result = api_instance.update_timecard(timecard_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->update_timecard: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timecard_id** | **String**| TThe ID of the timecard to modify. | 
 **body** | [**V1Timecard**](V1Timecard.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Timecard**](V1Timecard.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



