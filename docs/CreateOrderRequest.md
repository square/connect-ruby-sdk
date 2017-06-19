# SquareConnect::CreateOrderRequest

### Description

Defines the parameters that can be included in the body of a request to the [CreateOrder](#endpoint-createorder) endpoint.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotency_key** | **String** | A value you specify that uniquely identifies this order among orders you&#39;ve created.  If you&#39;re unsure whether a particular order was created successfully, you can reattempt it with the same idempotency key without worrying about creating duplicate orders.  See [Idempotency keys](#idempotencykeys) for more information. | [optional] 
**reference_id** | **String** | An optional ID you can associate with the order for your own purposes (such as to associate the order with an entity ID in your own database).  This value cannot exceed 40 characters. | [optional] 
**line_items** | [**Array&lt;CreateOrderRequestLineItem&gt;**](CreateOrderRequestLineItem.md) | The line items to associate with this order.  Each line item represents a different product (or a custom monetary amount) to include in a purchase. | 
**taxes** | [**Array&lt;CreateOrderRequestTax&gt;**](CreateOrderRequestTax.md) | The taxes include the custom taxes. | [optional] 
**discounts** | [**Array&lt;CreateOrderRequestDiscount&gt;**](CreateOrderRequestDiscount.md) | The discounts include the custom discounts . | [optional] 


