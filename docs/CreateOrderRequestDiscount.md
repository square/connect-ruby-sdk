# SquareConnect::CreateOrderRequestDiscount

### Description

Represents a discount that to either a single line item or an entire order.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catalog_object_id** | **String** | The catalog object id from exsiting [CatalogDiscount](#type-catalogdiscount).  Do not provide a value for this field if you provide values in other fields for a custom discount. | [optional] 
**name** | **String** | The discount&#39;s name. | [optional] 
**percentage** | **String** | The percentage of the discount, as a string representation of a decimal number.  A value of &#x60;7.25&#x60; corresponds to a percentage of 7.25%. This value range between 0.0 up to 100.0 | [optional] 
**amount_money** | [**Money**](Money.md) | The monetary amount of the discount. | [optional] 


