# SquareConnect::RetrieveInventoryCountResponse

### Description



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 
**counts** | [**Array&lt;InventoryCount&gt;**](InventoryCount.md) | The current calculated inventory counts for the requested object and locations. | [optional] 
**cursor** | **String** | The pagination cursor to be used in a subsequent request. If unset, this is the final response.  See [Pagination](/basics/api101/pagination) for more information. | [optional] 


