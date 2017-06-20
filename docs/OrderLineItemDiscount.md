# SquareConnect::OrderLineItemDiscount

### Description

Represents a discount that applies to one or more line items in an order.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The discount&#39;s name. | [optional] 
**type** | **String** | The type of the discount. If it is created by API, it would be either FIXED_PERCENTAGE or FIXED_AMOUNT.  VARIABLE_* is not supported in API because the order is created at the time of sale and either percentage or amount has to be specified. | [optional] 
**percentage** | **String** | The percentage of the tax, as a string representation of a decimal number.  A value of &#x60;7.25&#x60; corresponds to a percentage of 7.25%. | [optional] 
**amount_money** | [**Money**](Money.md) | The amount of the discount. | [optional] 
**applied_money** | [**Money**](Money.md) | The amount of the money applied by the discount in an order. | [optional] 
**scope** | **String** | The scope of the discount. | [optional] 


