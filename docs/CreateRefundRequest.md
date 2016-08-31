# SquareConnect::CreateRefundRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotency_key** | **String** | A value you specify that uniquely identifies this refund among refunds you&#39;ve created for the tender.  If you&#39;re unsure whether a particular refund succeeded, you can reattempt it with the same idempotency key without worrying about duplicating the refund. | 
**tender_id** | **String** | The ID of the tender to refund. | 
**reason** | **String** | A description of the reason for the refund. | [optional] 
**amount_money** | [**Money**](Money.md) | The amount of money to refund. | 


