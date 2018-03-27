# Change Log

## Version 2.6.0 (2018-03-27)

### Improvements: Orders API

* `BatchRetrieveOrders` will now return uncharged orders.

### New features: Orders API

* For Catalog-backed line items, setting `CreateOrderRequestLineItem.base_price_money` will now override 
  the catalog item variation's price.  
* `CreateOrderRequestModifier`s may now be created ad hoc using the new `name` and `base_price_money` fields.

## Version 2.5.2 (2018-01-06)

* `OTHER` enum value is added to `Type` on `V1SettlementEntry`

## Version 2.5.1 (2017-11-10)

* `ordinal` is added to `CatalogItemVariation`
* `website_url` is added to `Location`
* `tip_money` is added to `Tender`
* Changed `object_type` and `placeholder_type` from lists to single values in `V1PageCell` to mirror data model

## Version 2.5 (2017-11-02)

### New features: Transaction API and Reporting API

The Transaction API now supports the following request objects:

* `additional_recipients` &mdash; data type representing an additional recipient
  (in other words, a recipient other than the merchant or Square) receiving a
  portion of a tender.

The new Reporting API includes two endpoints that let you pull information about distributions you have received as an additional recipient:

* `AdditionalRecipientReceivables` &mdash; returns a list of receivables (across
  all source locations) representing monies credited to the given location ID by
  another Square account using the `additional_recipients` field in a transaction.

* `AdditionalRecipientReceivablesRefunds` &mdash; returns a list of refunded
  transactions (across all source locations) related to monies credited to the
  given location ID by another Square account using the `additional_recipients`
  field in a transaction.

## Version 2.4 (2017-09-27)

### New features: Register Domain for Apple Pay

* `RegisterDomain` endpoint activates a domain for use with Web Apple Pay.

### Other Changes

* `Location.type` used to indicate whether or not the location object represents a physical space.

## Version 2.3.1 (2017-09-15)

### New features: Charge Orders

* `Charge` endpoint can charge a specific Order.

## Version 2.3.0 (2017-09-13)

### New features: Orders API

* `CreateOrder` endpoint creates an itemized order which can be referenced in messages to the `Charge` endpoint.
* `BatchRetrieveOrders` retrieves order objects referenced in one or more transactions based on the provided `order_id`.

**Note:** at this point, `BatchRetrieveOrders only` returns information on paid orders made through Square's eCommerce APIs (Transactions, Checkout).

### Other Changes

* `order` is removed from Transaction
* `order_id` is added to Transaction
* `OrderLineItemDiscountType.UNKOWN` renamed to `OrderLineItemDiscountType.UNKOWN_DISCOUNT`
* `OrderLineItemTaxType.UNKOWN` renamed to `OrderLineItemDiscountType.UNKOWN_TAX`
* `ChargeRequest.idempotency_key` is restricted to max length 192
* `ChargeRequest.card_nonce` is restricted to max length 192
* `ChargeRequest.customer_card_id` is restricted to max length 192
* `ChargeRequest.reference_id` is restricted to max length 40
* `ChargeRequest.note` is restricted to max length 60
* `ChargeRequest.customer_id` is restricted to max length 50
* `CreateCheckoutRequest.redirect_url` is restricted to max length 800
* Added `phone_number` and `business_name` to Location

## Version 2.2.1 (2017-08-11)

* Documentation style and links fixes
* Support for pagination on V1 endpoints
* Include refund detail fields on V1 Refund model

## Version 2.0.0 (2016-03-30)

* Initial release of the SDK
