# SquareConnect::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The order&#39;s unique ID.  This value is not present if the order was not created with the [CreateOrder](#endpoint-createorder) endpoint. | [optional] 
**location_id** | **String** | The ID of the merchant location this order is associated with. | [optional] 
**reference_id** | **String** | A client specified identifier to associate an entity in another system with this order. | [optional] 
**line_items** | [**Array&lt;OrderLineItem&gt;**](OrderLineItem.md) | The line items included in the order. Every order has at least one line item. | [optional] 
**total_money** | [**Money**](Money.md) | The total amount of money to collect for the order. | [optional] 


