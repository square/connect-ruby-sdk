# SquareConnect::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The transaction&#39;s unique ID. | [optional] 
**location_id** | **String** | The ID of the transaction&#39;s associated location. | [optional] 
**created_at** | **String** | The time when the transaction was created, in RFC 3339 format. | [optional] 
**tenders** | [**Array&lt;Tender&gt;**](Tender.md) | Descriptions of the tenders used to pay for the transaction. | [optional] 
**refunds** | [**Array&lt;Refund&gt;**](Refund.md) | An array of any refunds associated with the transaction. | [optional] 
**reference_id** | **String** | If the transaction was created with the **Charge** endpoint, this value is the same as the value provided as the &#x60;reference_id&#x60; parameter in the request to that endpoint. | [optional] 
**product** | **String** | The product that processed the transaction. | [optional] 


