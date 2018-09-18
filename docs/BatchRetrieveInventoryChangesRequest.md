# SquareConnect::BatchRetrieveInventoryChangesRequest

### Description



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catalog_object_ids** | **Array&lt;String&gt;** | Filters results by [CatalogObject](#type-catalogobject) ID. Only applied when set. Default: unset. | [optional] 
**location_ids** | **Array&lt;String&gt;** | Filters results by [Location](#type-location) ID. Only applied when set. Default: unset. | [optional] 
**types** | **Array&lt;String&gt;** | Filters results by [InventoryChangeType](#type-inventorychangetype). Default: [&#x60;PHYSICAL_COUNT&#x60;, &#x60;ADJUSTMENT&#x60;]. &#x60;TRANSFER&#x60; is not supported as a filter. | [optional] 
**states** | **Array&lt;String&gt;** | Filters &#x60;ADJUSTMENT&#x60; query results by [InventoryState](#type-inventorystate). Only applied when set. Default: unset. | [optional] 
**updated_after** | **String** | Provided as an RFC 3339 timestamp. Returns results whose &#x60;created_at&#x60; or &#x60;calculated_at&#x60; value is after the given time. Default: UNIX epoch (&#x60;1970-01-01T00:00:00Z&#x60;). | [optional] 
**updated_before** | **String** | Provided as an RFC 3339 timestamp. Returns results whose &#x60;created_at&#x60; or &#x60;calculated_at&#x60; value is strictly before the given time. Default: UNIX epoch (&#x60;1970-01-01T00:00:00Z&#x60;). | [optional] 
**cursor** | **String** | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information. | [optional] 


