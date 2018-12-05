# SquareConnect::InventoryApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_change_inventory**](InventoryApi.md#batch_change_inventory) | **POST** /v2/inventory/batch-change | BatchChangeInventory
[**batch_retrieve_inventory_changes**](InventoryApi.md#batch_retrieve_inventory_changes) | **POST** /v2/inventory/batch-retrieve-changes | BatchRetrieveInventoryChanges
[**batch_retrieve_inventory_counts**](InventoryApi.md#batch_retrieve_inventory_counts) | **POST** /v2/inventory/batch-retrieve-counts | BatchRetrieveInventoryCounts
[**retrieve_inventory_adjustment**](InventoryApi.md#retrieve_inventory_adjustment) | **GET** /v2/inventory/adjustment/{adjustment_id} | RetrieveInventoryAdjustment
[**retrieve_inventory_changes**](InventoryApi.md#retrieve_inventory_changes) | **GET** /v2/inventory/{catalog_object_id}/changes | RetrieveInventoryChanges
[**retrieve_inventory_count**](InventoryApi.md#retrieve_inventory_count) | **GET** /v2/inventory/{catalog_object_id} | RetrieveInventoryCount
[**retrieve_inventory_physical_count**](InventoryApi.md#retrieve_inventory_physical_count) | **GET** /v2/inventory/physical-count/{physical_count_id} | RetrieveInventoryPhysicalCount


# **batch_change_inventory**
> BatchChangeInventoryResponse batch_change_inventory(body)

BatchChangeInventory

Applies adjustments and counts to the provided item quantities.  On success: returns the current calculated counts for all objects referenced in the request. On failure: returns a list of related errors.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::InventoryApi.new

body = SquareConnect::BatchChangeInventoryRequest.new # BatchChangeInventoryRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchChangeInventory
  result = api_instance.batch_change_inventory(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling InventoryApi->batch_change_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BatchChangeInventoryRequest**](BatchChangeInventoryRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchChangeInventoryResponse**](BatchChangeInventoryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **batch_retrieve_inventory_changes**
> BatchRetrieveInventoryChangesResponse batch_retrieve_inventory_changes(body)

BatchRetrieveInventoryChanges

Returns historical physical counts and adjustments based on the provided filter criteria.  Results are paginated and sorted in ascending order according their `occurred_at` timestamp (oldest first).  BatchRetrieveInventoryChanges is a catch-all query endpoint for queries that cannot be handled by other, simpler endpoints.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::InventoryApi.new

body = SquareConnect::BatchRetrieveInventoryChangesRequest.new # BatchRetrieveInventoryChangesRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchRetrieveInventoryChanges
  result = api_instance.batch_retrieve_inventory_changes(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling InventoryApi->batch_retrieve_inventory_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BatchRetrieveInventoryChangesRequest**](BatchRetrieveInventoryChangesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchRetrieveInventoryChangesResponse**](BatchRetrieveInventoryChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **batch_retrieve_inventory_counts**
> BatchRetrieveInventoryCountsResponse batch_retrieve_inventory_counts(body)

BatchRetrieveInventoryCounts

Returns current counts for the provided [CatalogObject](#type-catalogobject)s at the requested [Location](#type-location)s.  Results are paginated and sorted in descending order according to their `calculated_at` timestamp (newest first).  When `updated_after` is specified, only counts that have changed since that time (based on the server timestamp for the most recent change) are returned. This allows clients to perform a \"sync\" operation, for example in response to receiving a Webhook notification.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::InventoryApi.new

body = SquareConnect::BatchRetrieveInventoryCountsRequest.new # BatchRetrieveInventoryCountsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchRetrieveInventoryCounts
  result = api_instance.batch_retrieve_inventory_counts(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling InventoryApi->batch_retrieve_inventory_counts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BatchRetrieveInventoryCountsRequest**](BatchRetrieveInventoryCountsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchRetrieveInventoryCountsResponse**](BatchRetrieveInventoryCountsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_inventory_adjustment**
> RetrieveInventoryAdjustmentResponse retrieve_inventory_adjustment(adjustment_id)

RetrieveInventoryAdjustment

Returns the [InventoryAdjustment](#type-inventoryadjustment) object with the provided `adjustment_id`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::InventoryApi.new

adjustment_id = "adjustment_id_example" # String | ID of the [InventoryAdjustment](#type-inventoryadjustment) to retrieve.


begin
  #RetrieveInventoryAdjustment
  result = api_instance.retrieve_inventory_adjustment(adjustment_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling InventoryApi->retrieve_inventory_adjustment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adjustment_id** | **String**| ID of the [InventoryAdjustment](#type-inventoryadjustment) to retrieve. | 

### Return type

[**RetrieveInventoryAdjustmentResponse**](RetrieveInventoryAdjustmentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_inventory_changes**
> RetrieveInventoryChangesResponse retrieve_inventory_changes(catalog_object_id, opts)

RetrieveInventoryChanges

Returns a set of physical counts and inventory adjustments for the provided [CatalogObject](#type-catalogobject) at the requested [Location](#type-location)s.  Results are paginated and sorted in descending order according to their `occurred_at` timestamp (newest first).  There are no limits on how far back the caller can page. This endpoint is useful when displaying recent changes for a specific item. For more sophisticated queries, use a batch endpoint.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::InventoryApi.new

catalog_object_id = "catalog_object_id_example" # String | ID of the [CatalogObject](#type-catalogobject) to retrieve.

opts = { 
  location_ids: "location_ids_example", # String | The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations.
  cursor: "cursor_example" # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information.
}

begin
  #RetrieveInventoryChanges
  result = api_instance.retrieve_inventory_changes(catalog_object_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling InventoryApi->retrieve_inventory_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_object_id** | **String**| ID of the [CatalogObject](#type-catalogobject) to retrieve. | 
 **location_ids** | **String**| The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations. | [optional] 
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 

### Return type

[**RetrieveInventoryChangesResponse**](RetrieveInventoryChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_inventory_count**
> RetrieveInventoryCountResponse retrieve_inventory_count(catalog_object_id, opts)

RetrieveInventoryCount

Retrieves the current calculated stock count for a given [CatalogObject](#type-catalogobject) at a given set of [Location](#type-location)s. Responses are paginated and unsorted. For more sophisticated queries, use a batch endpoint.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::InventoryApi.new

catalog_object_id = "catalog_object_id_example" # String | ID of the [CatalogObject](#type-catalogobject) to retrieve.

opts = { 
  location_ids: "location_ids_example", # String | The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations.
  cursor: "cursor_example" # String | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information.
}

begin
  #RetrieveInventoryCount
  result = api_instance.retrieve_inventory_count(catalog_object_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling InventoryApi->retrieve_inventory_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_object_id** | **String**| ID of the [CatalogObject](#type-catalogobject) to retrieve. | 
 **location_ids** | **String**| The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations. | [optional] 
 **cursor** | **String**| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 

### Return type

[**RetrieveInventoryCountResponse**](RetrieveInventoryCountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_inventory_physical_count**
> RetrieveInventoryPhysicalCountResponse retrieve_inventory_physical_count(physical_count_id)

RetrieveInventoryPhysicalCount

Returns the [InventoryPhysicalCount](#type-inventoryphysicalcount) object with the provided `physical_count_id`.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::InventoryApi.new

physical_count_id = "physical_count_id_example" # String | ID of the [InventoryPhysicalCount](#type-inventoryphysicalcount) to retrieve.


begin
  #RetrieveInventoryPhysicalCount
  result = api_instance.retrieve_inventory_physical_count(physical_count_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling InventoryApi->retrieve_inventory_physical_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **physical_count_id** | **String**| ID of the [InventoryPhysicalCount](#type-inventoryphysicalcount) to retrieve. | 

### Return type

[**RetrieveInventoryPhysicalCountResponse**](RetrieveInventoryPhysicalCountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



