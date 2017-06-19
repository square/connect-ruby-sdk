# SquareConnect::OrderLineItem

### Description

Represents a line item in an order. Each line item describes a different product to purchase, with its own quantity and price details.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The line item&#39;s ID, unique only within this order. | [optional] 
**name** | **String** | The name of the line item. | [optional] 
**quantity** | **String** | The quantity of the product to purchase. Currently, this string must have an integer value. | [optional] 
**taxes** | [**Array&lt;OrderLineItemTax&gt;**](OrderLineItemTax.md) | The taxes applied to this line item. | [optional] 
**discounts** | [**Array&lt;OrderLineItemDiscount&gt;**](OrderLineItemDiscount.md) | The discounts applied to this line item. | [optional] 
**base_price_money** | [**Money**](Money.md) | The base price for a single unit of the line item. | [optional] 
**total_tax_money** | [**Money**](Money.md) | The total tax amount of money to collect for the line item. | [optional] 
**total_discount_money** | [**Money**](Money.md) | The total discount amount of money to collect for the line item. | [optional] 
**total_money** | [**Money**](Money.md) | The total amount of money to collect for this line item. | [optional] 


