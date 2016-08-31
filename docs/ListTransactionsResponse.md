# SquareConnect::ListTransactionsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 
**transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) | An array of transactions that match your query. | [optional] 
**cursor** | **String** | A pagination cursor for retrieving the next set of results, if any remain.  Provide this value as the &#x60;cursor&#x60; parameter in a subsequent request to the **ListTransactions** endpoint. | [optional] 


