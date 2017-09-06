# SquareConnect::BatchRetrieveOrdersResponse

### Description

Defines the fields that are included in the response body of a request to the [BatchRetrieveOrders](#endpoint-batchretrieveorders) endpoint.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orders** | [**Array&lt;Order&gt;**](Order.md) | The requested orders. This will omit any requested orders that do not exist or are not charged. | [optional] 
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 


