# SquareConnect::CreateOrderRequestModifier

### Description

Represents a modifier applied to a single line item.  Modifiers can reference existing objects in a merchant catalog or be constructed ad hoc at the time of purchase by providing a name and price.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catalog_object_id** | **String** | The catalog object ID of a [CatalogModifier](#type-catalogmodifier). | [optional] 
**name** | **String** | Only used for ad hoc modifiers. The name of the modifier. &#x60;name&#x60; cannot exceed 255 characters.  Do not provide a value for &#x60;name&#x60; if you provide a value for &#x60;catalog_object_id&#x60;. | [optional] 
**base_price_money** | [**Money**](Money.md) | Only used for ad hoc modifiers. The base price for the modifier.  Do not provide a value for &#x60;base_price_money&#x60; if you provide a value for &#x60;catalog_object_id&#x60;. | [optional] 


