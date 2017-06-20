# SquareConnect::OrderLineItemTax

### Description

Represents a tax that applies to one or more line items in an order.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The tax&#39;s name. | [optional] 
**type** | **String** | The type of a tax is either INCLUSIVE or ADDITIVE. | [optional] 
**percentage** | **String** | The percentage of the tax, as a string representation of a decimal number.  A value of &#x60;7.25&#x60; corresponds to a percentage of 7.25%. | [optional] 
**applied_money** | [**Money**](Money.md) | The amount of the money applied by the tax in an order. | [optional] 


