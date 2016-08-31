# SquareConnect::ListRefundsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 
**refunds** | [**Array&lt;Refund&gt;**](Refund.md) | An array of refunds that match your query. | [optional] 
**cursor** | **String** | A pagination cursor for retrieving the next set of results, if any remain.  Provide this value as the &#x60;cursor&#x60; parameter in a subsequent request to the **ListTenderRefunds** endpoint. | [optional] 


