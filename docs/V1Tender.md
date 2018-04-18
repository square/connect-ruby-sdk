# SquareConnect::V1Tender

### Description

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The tender&#39;s unique ID. | [optional] 
**type** | **String** | The type of tender. | [optional] 
**name** | **String** | A human-readable description of the tender. | [optional] 
**employee_id** | **String** | The ID of the employee that processed the tender. | [optional] 
**receipt_url** | **String** | The URL of the receipt for the tender. | [optional] 
**card_brand** | **String** | The brand of credit card provided. | [optional] 
**pan_suffix** | **String** | The last four digits of the provided credit card&#39;s account number. | [optional] 
**entry_method** | **String** | The tender&#39;s unique ID. | [optional] 
**payment_note** | **String** | Notes entered by the merchant about the tender at the time of payment, if any. Typically only present for tender with the type: OTHER. | [optional] 
**total_money** | [**V1Money**](V1Money.md) | The total amount of money provided in this form of tender. | [optional] 
**tendered_money** | [**V1Money**](V1Money.md) | The amount of total_money applied to the payment. | [optional] 
**change_back_money** | [**V1Money**](V1Money.md) | The amount of total_money returned to the buyer as change. | [optional] 
**refunded_money** | [**V1Money**](V1Money.md) | The total of all refunds applied to this tender. This amount is always negative or zero. | [optional] 
**is_exchange** | **BOOLEAN** | Indicates whether or not the tender is associated with an exchange. If is_exchange is true, the tender represents the value of goods returned in an exchange not the actual money paid. The exchange value reduces the tender amounts needed to pay for items purchased in the exchange. | [optional] 


