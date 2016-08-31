# SquareConnect::Card

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The card&#39;s unique ID, if any. | [optional] 
**card_brand** | **String** | The card&#39;s brand (such as &#x60;VISA&#x60;). | [optional] 
**last_4** | **String** | The last 4 digits of the card&#39;s number. | [optional] 
**exp_month** | **Integer** | The month of the card&#39;s expiration date, which must be between 1-12. | [optional] 
**exp_year** | **Integer** | The year of the card&#39;s expiration date, which must be a 4-digit year. | [optional] 
**cardholder_name** | **String** | The cardholder name for the card on file. | [optional] 
**billing_address** | [**Address**](Address.md) | The billing address for the card on file. | [optional] 


