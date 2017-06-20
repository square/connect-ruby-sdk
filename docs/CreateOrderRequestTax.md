# SquareConnect::CreateOrderRequestTax

### Description

Represents a tax that applies to either a single line item or an entire order.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The tax&#39;s name. | [optional] 
**type** | **String** | The type is either &#x60;ADDITIVE&#x60; or &#x60;INCLUSIVE&#x60;.  The default is ADDITIVE. | [optional] 
**percentage** | **String** | The percentage of the tax, as a string representation of a decimal number.  A value of &#x60;7.25&#x60; corresponds to a percentage of 7.25%. This value range between 0.0 up to 100.0 | [optional] 


