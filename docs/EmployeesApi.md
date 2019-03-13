# SquareConnect::EmployeesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_employees**](EmployeesApi.md#list_employees) | **GET** /v2/employees | ListEmployees
[**retrieve_employee**](EmployeesApi.md#retrieve_employee) | **GET** /v2/employees/{id} | RetrieveEmployee


# **list_employees**
> ListEmployeesResponse list_employees(opts)

ListEmployees

Gets a list of `Employee` objects for a business.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::EmployeesApi.new

opts = { 
  location_id: "location_id_example", # String | Filter employees returned to only those that are associated with the specified location.
  status: "status_example", # String | Specifies the EmployeeStatus to filter the employee by.
  limit: 56, # Integer | The number of employees to be returned on each page.
  cursor: "cursor_example" # String | The token required to retrieve the specified page of results.
}

begin
  #ListEmployees
  result = api_instance.list_employees(opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling EmployeesApi->list_employees: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| Filter employees returned to only those that are associated with the specified location. | [optional] 
 **status** | **String**| Specifies the EmployeeStatus to filter the employee by. | [optional] 
 **limit** | **Integer**| The number of employees to be returned on each page. | [optional] 
 **cursor** | **String**| The token required to retrieve the specified page of results. | [optional] 

### Return type

[**ListEmployeesResponse**](ListEmployeesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_employee**
> RetrieveEmployeeResponse retrieve_employee(id)

RetrieveEmployee

Gets an `Employee` by Square-assigned employee `ID` (UUID)

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::EmployeesApi.new

id = "id_example" # String | UUID for the employee that was requested.


begin
  #RetrieveEmployee
  result = api_instance.retrieve_employee(id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling EmployeesApi->retrieve_employee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID for the employee that was requested. | 

### Return type

[**RetrieveEmployeeResponse**](RetrieveEmployeeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



