# SquareConnect::CreateOrderRequestLineItem

### Description

Represents a line item to include in an order. Each line item describes a different product to purchase, with its own quantity and price details.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the line item. This value cannot exceed 500 characters. | 
**quantity** | **String** | The quantity to purchase, as a string representation of a number. Currently, only integer values are supported. | 
**base_price_money** | [**Money**](Money.md) | The base price for a single unit of the line item&#39;s associated variation. If a line item represents a Custom Amount instead of a particular product, this field indicates that amount. | 


