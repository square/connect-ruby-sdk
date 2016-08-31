# SquareConnect::Refund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique ID of the refund. | 
**location_id** | **String** | The ID of the refund&#39;s associated location. | 
**transaction_id** | **String** | The ID of the transaction refunded. | 
**tender_id** | **String** | The ID of the tender refunded. | 
**created_at** | **String** | The time when the refund was created, in RFC 3339 format. | [optional] 
**reason** | **String** | The reason for the refund being issued. | 
**amount_money** | [**Money**](Money.md) | The amount of money refunded. | 
**status** | **String** |  | 
**processing_fee_money** | [**Money**](Money.md) | The amount of processing fee refunded. | [optional] 


