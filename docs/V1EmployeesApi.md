# SquareConnect::V1EmployeesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_employee**](V1EmployeesApi.md#create_employee) | **POST** /v1/me/employees | CreateEmployee
[**create_employee_role**](V1EmployeesApi.md#create_employee_role) | **POST** /v1/me/roles | CreateEmployeeRole
[**create_timecard**](V1EmployeesApi.md#create_timecard) | **POST** /v1/me/timecards | CreateTimecard
[**delete_timecard**](V1EmployeesApi.md#delete_timecard) | **DELETE** /v1/me/timecards/{timecard_id} | DeleteTimecard
[**list_cash_drawer_shifts**](V1EmployeesApi.md#list_cash_drawer_shifts) | **GET** /v1/{location_id}/cash-drawer-shifts | ListCashDrawerShifts
[**list_employee_roles**](V1EmployeesApi.md#list_employee_roles) | **GET** /v1/me/roles | ListEmployeeRoles
[**list_employees**](V1EmployeesApi.md#list_employees) | **GET** /v1/me/employees | ListEmployees
[**list_timecard_events**](V1EmployeesApi.md#list_timecard_events) | **GET** /v1/me/timecards/{timecard_id}/events | ListTimecardEvents
[**list_timecards**](V1EmployeesApi.md#list_timecards) | **GET** /v1/me/timecards | ListTimecards
[**retrieve_cash_drawer_shift**](V1EmployeesApi.md#retrieve_cash_drawer_shift) | **GET** /v1/{location_id}/cash-drawer-shifts/{shift_id} | RetrieveCashDrawerShift
[**retrieve_employee**](V1EmployeesApi.md#retrieve_employee) | **GET** /v1/me/employees/{employee_id} | RetrieveEmployee
[**retrieve_employee_role**](V1EmployeesApi.md#retrieve_employee_role) | **GET** /v1/me/roles/{role_id} | RetrieveEmployeeRole
[**retrieve_timecard**](V1EmployeesApi.md#retrieve_timecard) | **GET** /v1/me/timecards/{timecard_id} | RetrieveTimecard
[**update_employee**](V1EmployeesApi.md#update_employee) | **PUT** /v1/me/employees/{employee_id} | UpdateEmployee
[**update_employee_role**](V1EmployeesApi.md#update_employee_role) | **PUT** /v1/me/roles/{role_id} | UpdateEmployeeRole
[**update_timecard**](V1EmployeesApi.md#update_timecard) | **PUT** /v1/me/timecards/{timecard_id} | UpdateTimecard


# **create_employee**
> V1Employee create_employee(body)

CreateEmployee

 Use the CreateEmployee endpoint to add an employee to a Square account. Employees created with the Connect API have an initial status of `INACTIVE`. Inactive employees cannot sign in to Square Point of Sale until they are activated from the Square Dashboard. Employee status cannot be changed with the Connect API.  <aside class=\"important\"> Employee entities cannot be deleted. To disable employee profiles, set the employee's status to <code>INACTIVE</code> </aside>

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
  #CreateEmployee
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

CreateEmployeeRole

Creates an employee role you can then assign to employees.  Square accounts can include any number of roles that can be assigned to employees. These roles define the actions and permissions granted to an employee with that role. For example, an employee with a \"Shift Manager\" role might be able to issue refunds in Square Point of Sale, whereas an employee with a \"Clerk\" role might not.  Roles are assigned with the [V1UpdateEmployee](#endpoint-v1updateemployee) endpoint. An employee can have only one role at a time.  If an employee has no role, they have none of the permissions associated with roles. All employees can accept payments with Square Point of Sale.

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
  #CreateEmployeeRole
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

CreateTimecard

Creates a timecard for an employee and clocks them in with an `API_CREATE` event and a `clockin_time` set to the current time unless the request provides a different value. To import timecards from another system (rather than clocking someone in). Specify the `clockin_time` and* `clockout_time` in the request.  Timecards correspond to exactly one shift for a given employee, bounded by the `clockin_time` and `clockout_time` fields. An employee is considered clocked in if they have a timecard that doesn't have a `clockout_time` set. An employee that is currently clocked in cannot be clocked in a second time.

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
  #CreateTimecard
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

DeleteTimecard

Deletes a timecard. Timecards can also be deleted through the Square Dashboard. Deleted timecards are still accessible through Connect API endpoints, but cannot be modified. The `deleted` field of the `Timecard` object indicates whether the timecard has been deleted.  *Note**: By default, deleted timecards appear alongside valid timecards in results returned by the [ListTimecards](#endpoint-v1employees-listtimecards) endpoint. To filter deleted timecards, include the `deleted` query parameter in the list request.  <aside> Only approved accounts can manage their employees with Square. Unapproved accounts cannot use employee management features with the API. </aside>

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
  #DeleteTimecard
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

ListCashDrawerShifts

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
  #ListCashDrawerShifts
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

ListEmployeeRoles

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
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListEmployeeRoles
  result = api_instance.list_employee_roles(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->list_employee_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| The order in which employees are listed in the response, based on their created_at field.Default value: ASC | [optional] 
 **limit** | **Integer**| The maximum integer number of employee entities to return in a single response. Default 100, maximum 200. | [optional] 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1EmployeeRole&gt;**](V1EmployeeRole.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_employees**
> Array&lt;V1Employee&gt; list_employees(opts)

ListEmployees

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
  limit: 56, # Integer | The maximum integer number of employee entities to return in a single response. Default 100, maximum 200.
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListEmployees
  result = api_instance.list_employees(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1EmployeesApi->list_employees: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | **String**| The order in which employees are listed in the response, based on their created_at field.      Default value: ASC | [optional] 
 **begin_updated_at** | **String**| If filtering results by their updated_at field, the beginning of the requested reporting period, in ISO 8601 format | [optional] 
 **end_updated_at** | **String**| If filtering results by there updated_at field, the end of the requested reporting period, in ISO 8601 format. | [optional] 
 **begin_created_at** | **String**| If filtering results by their created_at field, the beginning of the requested reporting period, in ISO 8601 format. | [optional] 
 **end_created_at** | **String**| If filtering results by their created_at field, the end of the requested reporting period, in ISO 8601 format. | [optional] 
 **status** | **String**| If provided, the endpoint returns only employee entities with the specified status (ACTIVE or INACTIVE). | [optional] 
 **external_id** | **String**| If provided, the endpoint returns only employee entities with the specified external_id. | [optional] 
 **limit** | **Integer**| The maximum integer number of employee entities to return in a single response. Default 100, maximum 200. | [optional] 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1Employee&gt;**](V1Employee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_timecard_events**
> Array&lt;V1TimecardEvent&gt; list_timecard_events(timecard_id)

ListTimecardEvents

Provides summary information for all events associated with a particular timecard.  <aside> Only approved accounts can manage their employees with Square. Unapproved accounts cannot use employee management features with the API. </aside>

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
  #ListTimecardEvents
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

ListTimecards

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
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListTimecards
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
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1Timecard&gt;**](V1Timecard.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_cash_drawer_shift**
> V1CashDrawerShift retrieve_cash_drawer_shift(location_id, shift_id)

RetrieveCashDrawerShift

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
  #RetrieveCashDrawerShift
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

RetrieveEmployee

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
  #RetrieveEmployee
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

RetrieveEmployeeRole

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
  #RetrieveEmployeeRole
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

RetrieveTimecard

Provides the details for a single timecard. <aside> Only approved accounts can manage their employees with Square. Unapproved accounts cannot use employee management features with the API. </aside>

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
  #RetrieveTimecard
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

UpdateEmployee



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
  #UpdateEmployee
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

UpdateEmployeeRole

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
  #UpdateEmployeeRole
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

UpdateTimecard

Modifies the details of a timecard with an `API_EDIT` event for the timecard. Updating an active timecard with a `clockout_time` clocks the employee out.

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

body = SquareConnect::V1Timecard.new # V1Timecard | An object containing the fields to POST for the request. See the corresponding object definition for field details.


begin
  #UpdateTimecard
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
 **body** | [**V1Timecard**](V1Timecard.md)| An object containing the fields to POST for the request. See the corresponding object definition for field details. | 

### Return type

[**V1Timecard**](V1Timecard.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



