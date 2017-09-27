# Change Log

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
