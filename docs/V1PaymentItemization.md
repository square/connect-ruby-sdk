# SquareConnect::V1PaymentItemization

### Description

Payment include an` itemizations` field that lists the items purchased, along with associated fees, modifiers, and discounts. Each itemization has an `itemization_type` field that indicates which of the following the itemization represents:  <ul> <li>An item variation from the merchant's item library</li> <li>A custom monetary amount</li> <li> An action performed on a Square gift card, such as activating or reloading it. </li> </ul>  *Note**: itemization information included in a `Payment` object reflects details collected **at the time of the payment**. Details such as the name or price of items might have changed since the payment was processed.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The item&#39;s name. | [optional] 
**quantity** | **Float** | The quantity of the item purchased. This can be a decimal value. | [optional] 
**itemization_type** | **String** | The type of purchase that the itemization represents, such as an ITEM or CUSTOM_AMOUNT See [V1PaymentItemizationItemizationType](#type-v1paymentitemizationitemizationtype) for possible values | [optional] 
**item_detail** | [**V1PaymentItemDetail**](V1PaymentItemDetail.md) | Details of the item, including its unique identifier and the identifier of the item variation purchased. | [optional] 
**notes** | **String** | Notes entered by the merchant about the item at the time of payment, if any. | [optional] 
**item_variation_name** | **String** | The name of the item variation purchased, if any. | [optional] 
**total_money** | [**V1Money**](V1Money.md) | The total cost of the item, including all taxes and discounts. | [optional] 
**single_quantity_money** | [**V1Money**](V1Money.md) | The cost of a single unit of this item. | [optional] 
**gross_sales_money** | [**V1Money**](V1Money.md) | The total cost of the itemization and its modifiers, not including taxes or discounts. | [optional] 
**discount_money** | [**V1Money**](V1Money.md) | The total of all discounts applied to the itemization. This value is always negative or zero. | [optional] 
**net_sales_money** | [**V1Money**](V1Money.md) | The sum of gross_sales_money and discount_money. | [optional] 
**taxes** | [**Array&lt;V1PaymentTax&gt;**](V1PaymentTax.md) | All taxes applied to this itemization. | [optional] 
**discounts** | [**Array&lt;V1PaymentDiscount&gt;**](V1PaymentDiscount.md) | All discounts applied to this itemization. | [optional] 
**modifiers** | [**Array&lt;V1PaymentModifier&gt;**](V1PaymentModifier.md) | All modifier options applied to this itemization. | [optional] 


