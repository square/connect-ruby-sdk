# SquareConnect::BatchRetrieveOrdersResponse

### Description

Defines the fields that are included in the response body of a request to the BatchRetrieveOrders endpoint.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orders** | [**Array&lt;Order&gt;**](Order.md) | The requested orders. This will omit any requested orders that do not exist or are not charged. | [optional] 
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 
**unconvertible_transaction_ids** | **Array&lt;String&gt;** | List of transaction ids within the requested set of ids that encountered transformation issues when being converted to an Order. | [optional] 


