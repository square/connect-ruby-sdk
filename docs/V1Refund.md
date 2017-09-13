# SquareConnect::V1Refund

### Description

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of refund  | [optional] 
**reason** | **String** | The merchant-specified reason for the refund. | [optional] 
**refunded_money** | [**V1Money**](V1Money.md) | The amount of money refunded. This amount is always negative. | [optional] 
**created_at** | **String** | The time when the merchant initiated the refund for Square to process, in ISO 8601 format.. | [optional] 
**processed_at** | **String** | The time when Square processed the refund on behalf of the merchant, in ISO 8601 format. | [optional] 
**payment_id** | **String** | The Square-issued ID of the payment the refund is applied to. | [optional] 
**merchant_id** | **String** |  | [optional] 


