# SquareConnect::ReportingApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_additional_recipient_receivable_refunds**](ReportingApi.md#list_additional_recipient_receivable_refunds) | **GET** /v2/locations/{location_id}/additional-recipient-receivable-refunds | ListAdditionalRecipientReceivableRefunds
[**list_additional_recipient_receivables**](ReportingApi.md#list_additional_recipient_receivables) | **GET** /v2/locations/{location_id}/additional-recipient-receivables | ListAdditionalRecipientReceivables


# **list_additional_recipient_receivable_refunds**
> ListAdditionalRecipientReceivableRefundsResponse list_additional_recipient_receivable_refunds(location_id, opts)

ListAdditionalRecipientReceivableRefunds

Returns a list of refunded transactions (across all possible originating locations) relating to monies credited to the provided location ID by another Square account using the `additional_recipients` field in a transaction.  Max results per [page](#paginatingresults): 50

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::ReportingApi.new

location_id = "location_id_example" # String | The ID of the location to list AdditionalRecipientReceivableRefunds for.

opts = { 
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time.
  sort_order: "sort_order_example", # String | The order in which results are listed in the response (`ASC` for oldest first, `DESC` for newest first).  Default value: `DESC`
  cursor: "cursor_example" # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
}

begin
  #ListAdditionalRecipientReceivableRefunds
  result = api_instance.list_additional_recipient_receivable_refunds(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling ReportingApi->list_additional_recipient_receivable_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list AdditionalRecipientReceivableRefunds for. | 
 **begin_time** | **String**| The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time. | [optional] 
 **sort_order** | **String**| The order in which results are listed in the response (&#x60;ASC&#x60; for oldest first, &#x60;DESC&#x60; for newest first).  Default value: &#x60;DESC&#x60; | [optional] 
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 

### Return type

[**ListAdditionalRecipientReceivableRefundsResponse**](ListAdditionalRecipientReceivableRefundsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_additional_recipient_receivables**
> ListAdditionalRecipientReceivablesResponse list_additional_recipient_receivables(location_id, opts)

ListAdditionalRecipientReceivables

Returns a list of receivables (across all possible sending locations) representing monies credited to the provided location ID by another Square account using the `additional_recipients` field in a transaction.  Max results per [page](#paginatingresults): 50

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::ReportingApi.new

location_id = "location_id_example" # String | The ID of the location to list AdditionalRecipientReceivables for.

opts = { 
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time.
  sort_order: "sort_order_example", # String | The order in which results are listed in the response (`ASC` for oldest first, `DESC` for newest first).  Default value: `DESC`
  cursor: "cursor_example" # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
}

begin
  #ListAdditionalRecipientReceivables
  result = api_instance.list_additional_recipient_receivables(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling ReportingApi->list_additional_recipient_receivables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list AdditionalRecipientReceivables for. | 
 **begin_time** | **String**| The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for details on date inclusivity/exclusivity.  Default value: The current time. | [optional] 
 **sort_order** | **String**| The order in which results are listed in the response (&#x60;ASC&#x60; for oldest first, &#x60;DESC&#x60; for newest first).  Default value: &#x60;DESC&#x60; | [optional] 
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 

### Return type

[**ListAdditionalRecipientReceivablesResponse**](ListAdditionalRecipientReceivablesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



