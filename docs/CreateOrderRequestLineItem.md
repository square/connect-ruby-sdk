# SquareConnect::CreateOrderRequestLineItem

### Description

Represents a line item to include in an order. Each line item describes a different product to purchase, with its own quantity and price details.  Line items can either have name and price specified, or they can reference objects from the merchant's catalog.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the line item. This value cannot exceed 500 characters. | [optional] 
**quantity** | **String** | The quantity to purchase, as a string representation of a number. Currently, only integer values are supported. | 
**base_price_money** | [**Money**](Money.md) | The base price for a single unit of the line item&#39;s associated variation. If a line item represents a Custom Amount instead of a particular product, this field indicates that amount. | [optional] 
**variation_name** | **String** | The variation_name of the line item. This value cannot exceed 255 characters.  If not set, the default name is &#x60;Regular&#x60;.  Do not provide a value for this field if you provide a value for the &#x60;name&#x60; and the &#x60;base_price_money&#x60;. | [optional] 
**note** | **String** | The note of the line item. This value cannot exceed 50 characters. | [optional] 
**catalog_object_id** | **String** | The catalog object id from existing [CatalogItemVariation](#type-catalogitemvariation).  Do not provide a value for this field if you provide a value for the &#x60;name&#x60; and the &#x60;base_price_money&#x60;. | [optional] 
**modifiers** | [**Array&lt;CreateOrderRequestModifier&gt;**](CreateOrderRequestModifier.md) | The item modifier catalog object ids from exsiting [CatalogModifier](#type-catalogmodifier)s.  Do not provide a value for this field if you provide a value for the &#x60;name&#x60; and the &#x60;base_price_money&#x60;. | [optional] 
**taxes** | [**Array&lt;CreateOrderRequestTax&gt;**](CreateOrderRequestTax.md) | The taxes to include on the line item. | [optional] 
**discounts** | [**Array&lt;CreateOrderRequestDiscount&gt;**](CreateOrderRequestDiscount.md) | The discounts to include on the line item. | [optional] 


