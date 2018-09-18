# SquareConnect::RetrieveInventoryChangesResponse

### Description



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 
**changes** | [**Array&lt;InventoryChange&gt;**](InventoryChange.md) | The set of inventory changes for the requested object and locations. | [optional] 
**cursor** | **String** | The pagination cursor to be used in a subsequent request. If unset, this is the final response.  See [Paginating results](#paginatingresults) for more information. | [optional] 


