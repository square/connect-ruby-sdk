Square Connect Ruby SDKs [![Build Status](https://travis-ci.org/square/connect-ruby-sdk.svg?branch=master)](https://travis-ci.org/square/connect-ruby-sdk)[![Gem Version](https://badge.fury.io/rb/square_connect.svg)](https://badge.fury.io/rb/square_connect)
==================

**If you have feedback about the new SDKs, or just want to talk to other Square Developers, request an invite to the new [slack community for Square Developers](https://docs.google.com/forms/d/e/1FAIpQLSfAZGIEZoNs-XryKqUoW3atFQHdQw5UqXLMOVPq3V4DEq-AJw/viewform?usp=sf_link#response=ACYDBNj5LFgPy8Tcac2gSgv_IjXvgWsPy2CO2xTXwnc0OSSxCvWFgc7SCDHvVQ)**

This repository contains the released Ruby client SDK. Check out our [API
specification repository](https://github.com/square/connect-api-specification)
for the specification and template files we used to generate this.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0
- Package version: 2.2.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

For more information, please visit [https://squareup.com/developers](https://squareup.com/developers)

## Installation

### RubyGems
The Ruby SDK is published as a gem. Simply run:

```
$ gem install square_connect
```

Or add this line to your Gemfile:

```
gem 'square_connect'
```

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/square/connect-ruby-sdk, then add the following in the Gemfile:

    gem 'square_connect', :git => 'https://github.com/square/connect-ruby-sdk.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'square_connect'

# Setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CatalogApi.new

body = SquareConnect::BatchDeleteCatalogObjectsRequest.new # BatchDeleteCatalogObjectsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchDeleteCatalogObjects
  result = api_instance.batch_delete_catalog_objects(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->batch_delete_catalog_objects: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://connect.squareup.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SquareConnect::CatalogApi* | [**batch_delete_catalog_objects**](docs/CatalogApi.md#batch_delete_catalog_objects) | **POST** /v2/catalog/batch-delete | BatchDeleteCatalogObjects
*SquareConnect::CatalogApi* | [**batch_retrieve_catalog_objects**](docs/CatalogApi.md#batch_retrieve_catalog_objects) | **POST** /v2/catalog/batch-retrieve | BatchRetrieveCatalogObjects
*SquareConnect::CatalogApi* | [**batch_upsert_catalog_objects**](docs/CatalogApi.md#batch_upsert_catalog_objects) | **POST** /v2/catalog/batch-upsert | BatchUpsertCatalogObjects
*SquareConnect::CatalogApi* | [**catalog_info**](docs/CatalogApi.md#catalog_info) | **GET** /v2/catalog/info | CatalogInfo
*SquareConnect::CatalogApi* | [**delete_catalog_object**](docs/CatalogApi.md#delete_catalog_object) | **DELETE** /v2/catalog/object/{object_id} | DeleteCatalogObject
*SquareConnect::CatalogApi* | [**list_catalog**](docs/CatalogApi.md#list_catalog) | **GET** /v2/catalog/list | ListCatalog
*SquareConnect::CatalogApi* | [**retrieve_catalog_object**](docs/CatalogApi.md#retrieve_catalog_object) | **GET** /v2/catalog/object/{object_id} | RetrieveCatalogObject
*SquareConnect::CatalogApi* | [**search_catalog_objects**](docs/CatalogApi.md#search_catalog_objects) | **POST** /v2/catalog/search | SearchCatalogObjects
*SquareConnect::CatalogApi* | [**update_item_modifier_lists**](docs/CatalogApi.md#update_item_modifier_lists) | **POST** /v2/catalog/update-item-modifier-lists | UpdateItemModifierLists
*SquareConnect::CatalogApi* | [**update_item_taxes**](docs/CatalogApi.md#update_item_taxes) | **POST** /v2/catalog/update-item-taxes | UpdateItemTaxes
*SquareConnect::CatalogApi* | [**upsert_catalog_object**](docs/CatalogApi.md#upsert_catalog_object) | **POST** /v2/catalog/object | UpsertCatalogObject
*SquareConnect::CheckoutApi* | [**create_checkout**](docs/CheckoutApi.md#create_checkout) | **POST** /v2/locations/{location_id}/checkouts | CreateCheckout
*SquareConnect::CustomersApi* | [**create_customer**](docs/CustomersApi.md#create_customer) | **POST** /v2/customers | CreateCustomer
*SquareConnect::CustomersApi* | [**create_customer_card**](docs/CustomersApi.md#create_customer_card) | **POST** /v2/customers/{customer_id}/cards | CreateCustomerCard
*SquareConnect::CustomersApi* | [**delete_customer**](docs/CustomersApi.md#delete_customer) | **DELETE** /v2/customers/{customer_id} | DeleteCustomer
*SquareConnect::CustomersApi* | [**delete_customer_card**](docs/CustomersApi.md#delete_customer_card) | **DELETE** /v2/customers/{customer_id}/cards/{card_id} | DeleteCustomerCard
*SquareConnect::CustomersApi* | [**list_customers**](docs/CustomersApi.md#list_customers) | **GET** /v2/customers | ListCustomers
*SquareConnect::CustomersApi* | [**retrieve_customer**](docs/CustomersApi.md#retrieve_customer) | **GET** /v2/customers/{customer_id} | RetrieveCustomer
*SquareConnect::CustomersApi* | [**update_customer**](docs/CustomersApi.md#update_customer) | **PUT** /v2/customers/{customer_id} | UpdateCustomer
*SquareConnect::LocationsApi* | [**list_locations**](docs/LocationsApi.md#list_locations) | **GET** /v2/locations | ListLocations
*SquareConnect::TransactionsApi* | [**capture_transaction**](docs/TransactionsApi.md#capture_transaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/capture | CaptureTransaction
*SquareConnect::TransactionsApi* | [**charge**](docs/TransactionsApi.md#charge) | **POST** /v2/locations/{location_id}/transactions | Charge
*SquareConnect::TransactionsApi* | [**create_refund**](docs/TransactionsApi.md#create_refund) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/refund | CreateRefund
*SquareConnect::TransactionsApi* | [**list_refunds**](docs/TransactionsApi.md#list_refunds) | **GET** /v2/locations/{location_id}/refunds | ListRefunds
*SquareConnect::TransactionsApi* | [**list_transactions**](docs/TransactionsApi.md#list_transactions) | **GET** /v2/locations/{location_id}/transactions | ListTransactions
*SquareConnect::TransactionsApi* | [**retrieve_transaction**](docs/TransactionsApi.md#retrieve_transaction) | **GET** /v2/locations/{location_id}/transactions/{transaction_id} | RetrieveTransaction
*SquareConnect::TransactionsApi* | [**void_transaction**](docs/TransactionsApi.md#void_transaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/void | VoidTransaction
*SquareConnect::V1EmployeesApi* | [**create_employee**](docs/V1EmployeesApi.md#create_employee) | **POST** /v1/me/employees | Creates an employee for a business.
*SquareConnect::V1EmployeesApi* | [**create_employee_role**](docs/V1EmployeesApi.md#create_employee_role) | **POST** /v1/me/roles | Creates an employee role you can then assign to employees.
*SquareConnect::V1EmployeesApi* | [**create_timecard**](docs/V1EmployeesApi.md#create_timecard) | **POST** /v1/me/timecards | Creates a timecard for an employee. Each timecard corresponds to a single shift.
*SquareConnect::V1EmployeesApi* | [**delete_timecard**](docs/V1EmployeesApi.md#delete_timecard) | **DELETE** /v1/me/timecards/{timecard_id} | Deletes a timecard. Deleted timecards are still accessible from Connect API endpoints, but the value of their deleted field is set to true. See Handling deleted timecards for more information.
*SquareConnect::V1EmployeesApi* | [**list_cash_drawer_shifts**](docs/V1EmployeesApi.md#list_cash_drawer_shifts) | **GET** /v1/{location_id}/cash-drawer-shifts | Provides the details for all of a location's cash drawer shifts during a date range. The date range you specify cannot exceed 90 days.
*SquareConnect::V1EmployeesApi* | [**list_employee_roles**](docs/V1EmployeesApi.md#list_employee_roles) | **GET** /v1/me/roles | Provides summary information for all of a business's employee roles.
*SquareConnect::V1EmployeesApi* | [**list_employees**](docs/V1EmployeesApi.md#list_employees) | **GET** /v1/me/employees | Provides summary information for all of a business's employees.
*SquareConnect::V1EmployeesApi* | [**list_timecard_events**](docs/V1EmployeesApi.md#list_timecard_events) | **GET** /v1/me/timecards/{timecard_id}/events | Provides summary information for all events associated with a particular timecard.
*SquareConnect::V1EmployeesApi* | [**list_timecards**](docs/V1EmployeesApi.md#list_timecards) | **GET** /v1/me/timecards | Provides summary information for all of a business's employee timecards.
*SquareConnect::V1EmployeesApi* | [**retrieve_cash_drawer_shift**](docs/V1EmployeesApi.md#retrieve_cash_drawer_shift) | **GET** /v1/{location_id}/cash-drawer-shifts/{shift_id} | Provides the details for a single cash drawer shift, including all events that occurred during the shift.
*SquareConnect::V1EmployeesApi* | [**retrieve_employee**](docs/V1EmployeesApi.md#retrieve_employee) | **GET** /v1/me/employees/{employee_id} | Provides the details for a single employee.
*SquareConnect::V1EmployeesApi* | [**retrieve_employee_role**](docs/V1EmployeesApi.md#retrieve_employee_role) | **GET** /v1/me/roles/{role_id} | Provides the details for a single employee role.
*SquareConnect::V1EmployeesApi* | [**retrieve_timecard**](docs/V1EmployeesApi.md#retrieve_timecard) | **GET** /v1/me/timecards/{timecard_id} | Provides the details for a single timecard.
*SquareConnect::V1EmployeesApi* | [**update_employee**](docs/V1EmployeesApi.md#update_employee) | **PUT** /v1/me/employees/{employee_id} | V1 UpdateEmployee
*SquareConnect::V1EmployeesApi* | [**update_employee_role**](docs/V1EmployeesApi.md#update_employee_role) | **PUT** /v1/me/roles/{role_id} | Modifies the details of an employee role.
*SquareConnect::V1EmployeesApi* | [**update_timecard**](docs/V1EmployeesApi.md#update_timecard) | **PUT** /v1/me/timecards/{timecard_id} | Modifies a timecard's details. This creates an API_EDIT event for the timecard. You can view a timecard's event history with the List Timecard Events endpoint.
*SquareConnect::V1ItemsApi* | [**adjust_inventory**](docs/V1ItemsApi.md#adjust_inventory) | **POST** /v1/{location_id}/inventory/{variation_id} | Adjusts an item variation's current available inventory.
*SquareConnect::V1ItemsApi* | [**apply_fee**](docs/V1ItemsApi.md#apply_fee) | **PUT** /v1/{location_id}/items/{item_id}/fees/{fee_id} | Associates a fee with an item, meaning the fee is automatically applied to the item in Square Register.
*SquareConnect::V1ItemsApi* | [**apply_modifier_list**](docs/V1ItemsApi.md#apply_modifier_list) | **PUT** /v1/{location_id}/items/{item_id}/modifier-lists/{modifier_list_id} | Associates a modifier list with an item, meaning modifier options from the list can be applied to the item.
*SquareConnect::V1ItemsApi* | [**create_category**](docs/V1ItemsApi.md#create_category) | **POST** /v1/{location_id}/categories | Creates an item category.
*SquareConnect::V1ItemsApi* | [**create_discount**](docs/V1ItemsApi.md#create_discount) | **POST** /v1/{location_id}/discounts | Creates a discount.
*SquareConnect::V1ItemsApi* | [**create_fee**](docs/V1ItemsApi.md#create_fee) | **POST** /v1/{location_id}/fees | Creates a fee (tax).
*SquareConnect::V1ItemsApi* | [**create_item**](docs/V1ItemsApi.md#create_item) | **POST** /v1/{location_id}/items | Creates an item and at least one variation for it.
*SquareConnect::V1ItemsApi* | [**create_modifier_list**](docs/V1ItemsApi.md#create_modifier_list) | **POST** /v1/{location_id}/modifier-lists | Creates an item modifier list and at least one modifier option for it.
*SquareConnect::V1ItemsApi* | [**create_modifier_option**](docs/V1ItemsApi.md#create_modifier_option) | **POST** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options | Creates an item modifier option and adds it to a modifier list.
*SquareConnect::V1ItemsApi* | [**create_page**](docs/V1ItemsApi.md#create_page) | **POST** /v1/{location_id}/pages | Creates a Favorites page in Square Register.
*SquareConnect::V1ItemsApi* | [**create_variation**](docs/V1ItemsApi.md#create_variation) | **POST** /v1/{location_id}/items/{item_id}/variations | Creates an item variation for an existing item.
*SquareConnect::V1ItemsApi* | [**delete_category**](docs/V1ItemsApi.md#delete_category) | **DELETE** /v1/{location_id}/categories/{category_id} | Deletes an existing item category.
*SquareConnect::V1ItemsApi* | [**delete_discount**](docs/V1ItemsApi.md#delete_discount) | **DELETE** /v1/{location_id}/discounts/{discount_id} | Deletes an existing discount.
*SquareConnect::V1ItemsApi* | [**delete_fee**](docs/V1ItemsApi.md#delete_fee) | **DELETE** /v1/{location_id}/fees/{fee_id} | Deletes an existing fee (tax).
*SquareConnect::V1ItemsApi* | [**delete_item**](docs/V1ItemsApi.md#delete_item) | **DELETE** /v1/{location_id}/items/{item_id} | Deletes an existing item and all item variations associated with it.
*SquareConnect::V1ItemsApi* | [**delete_modifier_list**](docs/V1ItemsApi.md#delete_modifier_list) | **DELETE** /v1/{location_id}/modifier-lists/{modifier_list_id} | Deletes an existing item modifier list and all modifier options associated with it.
*SquareConnect::V1ItemsApi* | [**delete_modifier_option**](docs/V1ItemsApi.md#delete_modifier_option) | **DELETE** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options/{modifier_option_id} | Deletes an existing item modifier option from a modifier list.
*SquareConnect::V1ItemsApi* | [**delete_page**](docs/V1ItemsApi.md#delete_page) | **DELETE** /v1/{location_id}/pages/{page_id} | Deletes an existing Favorites page and all of its cells.
*SquareConnect::V1ItemsApi* | [**delete_page_cell**](docs/V1ItemsApi.md#delete_page_cell) | **DELETE** /v1/{location_id}/pages/{page_id}/cells | Deletes a cell from a Favorites page in Square Register.
*SquareConnect::V1ItemsApi* | [**delete_variation**](docs/V1ItemsApi.md#delete_variation) | **DELETE** /v1/{location_id}/items/{item_id}/variations/{variation_id} | Deletes an existing item variation from an item.
*SquareConnect::V1ItemsApi* | [**list_categories**](docs/V1ItemsApi.md#list_categories) | **GET** /v1/{location_id}/categories | Lists all of a location's item categories.
*SquareConnect::V1ItemsApi* | [**list_discounts**](docs/V1ItemsApi.md#list_discounts) | **GET** /v1/{location_id}/discounts | Lists all of a location's discounts.
*SquareConnect::V1ItemsApi* | [**list_fees**](docs/V1ItemsApi.md#list_fees) | **GET** /v1/{location_id}/fees | Lists all of a location's fees (taxes).
*SquareConnect::V1ItemsApi* | [**list_inventory**](docs/V1ItemsApi.md#list_inventory) | **GET** /v1/{location_id}/inventory | Provides inventory information for all of a merchant's inventory-enabled item variations.
*SquareConnect::V1ItemsApi* | [**list_items**](docs/V1ItemsApi.md#list_items) | **GET** /v1/{location_id}/items | Provides summary information for all of a location's items.
*SquareConnect::V1ItemsApi* | [**list_modifier_lists**](docs/V1ItemsApi.md#list_modifier_lists) | **GET** /v1/{location_id}/modifier-lists | Lists all of a location's modifier lists.
*SquareConnect::V1ItemsApi* | [**list_pages**](docs/V1ItemsApi.md#list_pages) | **GET** /v1/{location_id}/pages | Lists all of a location's Favorites pages in Square Register.
*SquareConnect::V1ItemsApi* | [**remove_fee**](docs/V1ItemsApi.md#remove_fee) | **DELETE** /v1/{location_id}/items/{item_id}/fees/{fee_id} | Removes a fee assocation from an item, meaning the fee is no longer automatically applied to the item in Square Register.
*SquareConnect::V1ItemsApi* | [**remove_modifier_list**](docs/V1ItemsApi.md#remove_modifier_list) | **DELETE** /v1/{location_id}/items/{item_id}/modifier-lists/{modifier_list_id} | Removes a modifier list association from an item, meaning modifier options from the list can no longer be applied to the item.
*SquareConnect::V1ItemsApi* | [**retrieve_item**](docs/V1ItemsApi.md#retrieve_item) | **GET** /v1/{location_id}/items/{item_id} | Provides the details for a single item, including associated modifier lists and fees.
*SquareConnect::V1ItemsApi* | [**retrieve_modifier_list**](docs/V1ItemsApi.md#retrieve_modifier_list) | **GET** /v1/{location_id}/modifier-lists/{modifier_list_id} | Provides the details for a single modifier list.
*SquareConnect::V1ItemsApi* | [**update_category**](docs/V1ItemsApi.md#update_category) | **PUT** /v1/{location_id}/categories/{category_id} | Modifies the details of an existing item category.
*SquareConnect::V1ItemsApi* | [**update_discount**](docs/V1ItemsApi.md#update_discount) | **PUT** /v1/{location_id}/discounts/{discount_id} | Modifies the details of an existing discount.
*SquareConnect::V1ItemsApi* | [**update_fee**](docs/V1ItemsApi.md#update_fee) | **PUT** /v1/{location_id}/fees/{fee_id} | Modifies the details of an existing fee (tax).
*SquareConnect::V1ItemsApi* | [**update_item**](docs/V1ItemsApi.md#update_item) | **PUT** /v1/{location_id}/items/{item_id} | Modifies the core details of an existing item.
*SquareConnect::V1ItemsApi* | [**update_modifier_list**](docs/V1ItemsApi.md#update_modifier_list) | **PUT** /v1/{location_id}/modifier-lists/{modifier_list_id} | Modifies the details of an existing item modifier list.
*SquareConnect::V1ItemsApi* | [**update_modifier_option**](docs/V1ItemsApi.md#update_modifier_option) | **PUT** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options/{modifier_option_id} | Modifies the details of an existing item modifier option.
*SquareConnect::V1ItemsApi* | [**update_page**](docs/V1ItemsApi.md#update_page) | **PUT** /v1/{location_id}/pages/{page_id} | Modifies the details of a Favorites page in Square Register.
*SquareConnect::V1ItemsApi* | [**update_page_cell**](docs/V1ItemsApi.md#update_page_cell) | **PUT** /v1/{location_id}/pages/{page_id}/cells | Modifies a cell of a Favorites page in Square Register.
*SquareConnect::V1ItemsApi* | [**update_variation**](docs/V1ItemsApi.md#update_variation) | **PUT** /v1/{location_id}/items/{item_id}/variations/{variation_id} | Modifies the details of an existing item variation.
*SquareConnect::V1LocationsApi* | [**list_locations**](docs/V1LocationsApi.md#list_locations) | **GET** /v1/me/locations | Provides details for a business's locations, including their IDs.
*SquareConnect::V1LocationsApi* | [**retrieve_business**](docs/V1LocationsApi.md#retrieve_business) | **GET** /v1/me | Get a business's information.
*SquareConnect::V1TransactionsApi* | [**create_refund**](docs/V1TransactionsApi.md#create_refund) | **POST** /v1/{location_id}/refunds | Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.
*SquareConnect::V1TransactionsApi* | [**list_bank_accounts**](docs/V1TransactionsApi.md#list_bank_accounts) | **GET** /v1/{location_id}/bank-accounts | Provides non-confidential details for all of a location's associated bank accounts. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.
*SquareConnect::V1TransactionsApi* | [**list_orders**](docs/V1TransactionsApi.md#list_orders) | **GET** /v1/{location_id}/orders | Provides summary information for a merchant's online store orders.
*SquareConnect::V1TransactionsApi* | [**list_payments**](docs/V1TransactionsApi.md#list_payments) | **GET** /v1/{location_id}/payments | Provides summary information for all payments taken by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length. See Date ranges for details of inclusive and exclusive dates.
*SquareConnect::V1TransactionsApi* | [**list_refunds**](docs/V1TransactionsApi.md#list_refunds) | **GET** /v1/{location_id}/refunds | Provides the details for all refunds initiated by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length.
*SquareConnect::V1TransactionsApi* | [**list_settlements**](docs/V1TransactionsApi.md#list_settlements) | **GET** /v1/{location_id}/settlements | Provides summary information for all deposits and withdrawals initiated by Square to a merchant's bank account during a date range. Date ranges cannot exceed one year in length.
*SquareConnect::V1TransactionsApi* | [**retrieve_bank_account**](docs/V1TransactionsApi.md#retrieve_bank_account) | **GET** /v1/{location_id}/bank-accounts/{bank_account_id} | Provides non-confidential details for a merchant's associated bank account. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.
*SquareConnect::V1TransactionsApi* | [**retrieve_order**](docs/V1TransactionsApi.md#retrieve_order) | **GET** /v1/{location_id}/orders/{order_id} | Provides comprehensive information for a single online store order, including the order's history.
*SquareConnect::V1TransactionsApi* | [**retrieve_payment**](docs/V1TransactionsApi.md#retrieve_payment) | **GET** /v1/{location_id}/payments/{payment_id} | Provides comprehensive information for a single payment.
*SquareConnect::V1TransactionsApi* | [**retrieve_settlement**](docs/V1TransactionsApi.md#retrieve_settlement) | **GET** /v1/{location_id}/settlements/{settlement_id} | Provides comprehensive information for a single settlement, including the entries that contribute to the settlement's total.
*SquareConnect::V1TransactionsApi* | [**update_order**](docs/V1TransactionsApi.md#update_order) | **PUT** /v1/{location_id}/orders/{order_id} | Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:


## Documentation for Models

 - [SquareConnect::Address](docs/Address.md)
 - [SquareConnect::BatchDeleteCatalogObjectsRequest](docs/BatchDeleteCatalogObjectsRequest.md)
 - [SquareConnect::BatchDeleteCatalogObjectsResponse](docs/BatchDeleteCatalogObjectsResponse.md)
 - [SquareConnect::BatchRetrieveCatalogObjectsRequest](docs/BatchRetrieveCatalogObjectsRequest.md)
 - [SquareConnect::BatchRetrieveCatalogObjectsResponse](docs/BatchRetrieveCatalogObjectsResponse.md)
 - [SquareConnect::BatchUpsertCatalogObjectsRequest](docs/BatchUpsertCatalogObjectsRequest.md)
 - [SquareConnect::BatchUpsertCatalogObjectsResponse](docs/BatchUpsertCatalogObjectsResponse.md)
 - [SquareConnect::CaptureTransactionRequest](docs/CaptureTransactionRequest.md)
 - [SquareConnect::CaptureTransactionResponse](docs/CaptureTransactionResponse.md)
 - [SquareConnect::Card](docs/Card.md)
 - [SquareConnect::CardBrand](docs/CardBrand.md)
 - [SquareConnect::CatalogCategory](docs/CatalogCategory.md)
 - [SquareConnect::CatalogDiscount](docs/CatalogDiscount.md)
 - [SquareConnect::CatalogDiscountType](docs/CatalogDiscountType.md)
 - [SquareConnect::CatalogIdMapping](docs/CatalogIdMapping.md)
 - [SquareConnect::CatalogInfoRequest](docs/CatalogInfoRequest.md)
 - [SquareConnect::CatalogInfoResponse](docs/CatalogInfoResponse.md)
 - [SquareConnect::CatalogInfoResponseLimits](docs/CatalogInfoResponseLimits.md)
 - [SquareConnect::CatalogItem](docs/CatalogItem.md)
 - [SquareConnect::CatalogItemModifierListInfo](docs/CatalogItemModifierListInfo.md)
 - [SquareConnect::CatalogItemProductType](docs/CatalogItemProductType.md)
 - [SquareConnect::CatalogItemVariation](docs/CatalogItemVariation.md)
 - [SquareConnect::CatalogModifier](docs/CatalogModifier.md)
 - [SquareConnect::CatalogModifierList](docs/CatalogModifierList.md)
 - [SquareConnect::CatalogModifierListSelectionType](docs/CatalogModifierListSelectionType.md)
 - [SquareConnect::CatalogModifierOverride](docs/CatalogModifierOverride.md)
 - [SquareConnect::CatalogObject](docs/CatalogObject.md)
 - [SquareConnect::CatalogObjectBatch](docs/CatalogObjectBatch.md)
 - [SquareConnect::CatalogObjectType](docs/CatalogObjectType.md)
 - [SquareConnect::CatalogPricingType](docs/CatalogPricingType.md)
 - [SquareConnect::CatalogQuery](docs/CatalogQuery.md)
 - [SquareConnect::CatalogQueryExact](docs/CatalogQueryExact.md)
 - [SquareConnect::CatalogQueryItemsForModifierList](docs/CatalogQueryItemsForModifierList.md)
 - [SquareConnect::CatalogQueryItemsForTax](docs/CatalogQueryItemsForTax.md)
 - [SquareConnect::CatalogQueryPrefix](docs/CatalogQueryPrefix.md)
 - [SquareConnect::CatalogQueryRange](docs/CatalogQueryRange.md)
 - [SquareConnect::CatalogQuerySortedAttribute](docs/CatalogQuerySortedAttribute.md)
 - [SquareConnect::CatalogQueryText](docs/CatalogQueryText.md)
 - [SquareConnect::CatalogTax](docs/CatalogTax.md)
 - [SquareConnect::CatalogV1Id](docs/CatalogV1Id.md)
 - [SquareConnect::ChargeRequest](docs/ChargeRequest.md)
 - [SquareConnect::ChargeResponse](docs/ChargeResponse.md)
 - [SquareConnect::Checkout](docs/Checkout.md)
 - [SquareConnect::Country](docs/Country.md)
 - [SquareConnect::CreateCheckoutRequest](docs/CreateCheckoutRequest.md)
 - [SquareConnect::CreateCheckoutResponse](docs/CreateCheckoutResponse.md)
 - [SquareConnect::CreateCustomerCardRequest](docs/CreateCustomerCardRequest.md)
 - [SquareConnect::CreateCustomerCardResponse](docs/CreateCustomerCardResponse.md)
 - [SquareConnect::CreateCustomerRequest](docs/CreateCustomerRequest.md)
 - [SquareConnect::CreateCustomerResponse](docs/CreateCustomerResponse.md)
 - [SquareConnect::CreateOrderRequest](docs/CreateOrderRequest.md)
 - [SquareConnect::CreateOrderRequestDiscount](docs/CreateOrderRequestDiscount.md)
 - [SquareConnect::CreateOrderRequestLineItem](docs/CreateOrderRequestLineItem.md)
 - [SquareConnect::CreateOrderRequestTax](docs/CreateOrderRequestTax.md)
 - [SquareConnect::CreateRefundRequest](docs/CreateRefundRequest.md)
 - [SquareConnect::CreateRefundResponse](docs/CreateRefundResponse.md)
 - [SquareConnect::Currency](docs/Currency.md)
 - [SquareConnect::Customer](docs/Customer.md)
 - [SquareConnect::CustomerGroupInfo](docs/CustomerGroupInfo.md)
 - [SquareConnect::CustomerPreferences](docs/CustomerPreferences.md)
 - [SquareConnect::DeleteCatalogObjectRequest](docs/DeleteCatalogObjectRequest.md)
 - [SquareConnect::DeleteCatalogObjectResponse](docs/DeleteCatalogObjectResponse.md)
 - [SquareConnect::DeleteCustomerCardRequest](docs/DeleteCustomerCardRequest.md)
 - [SquareConnect::DeleteCustomerCardResponse](docs/DeleteCustomerCardResponse.md)
 - [SquareConnect::DeleteCustomerRequest](docs/DeleteCustomerRequest.md)
 - [SquareConnect::DeleteCustomerResponse](docs/DeleteCustomerResponse.md)
 - [SquareConnect::Device](docs/Device.md)
 - [SquareConnect::Error](docs/Error.md)
 - [SquareConnect::ErrorCategory](docs/ErrorCategory.md)
 - [SquareConnect::ErrorCode](docs/ErrorCode.md)
 - [SquareConnect::InventoryAlertType](docs/InventoryAlertType.md)
 - [SquareConnect::ItemVariationLocationOverrides](docs/ItemVariationLocationOverrides.md)
 - [SquareConnect::ListCatalogRequest](docs/ListCatalogRequest.md)
 - [SquareConnect::ListCatalogResponse](docs/ListCatalogResponse.md)
 - [SquareConnect::ListCustomersRequest](docs/ListCustomersRequest.md)
 - [SquareConnect::ListCustomersResponse](docs/ListCustomersResponse.md)
 - [SquareConnect::ListLocationsRequest](docs/ListLocationsRequest.md)
 - [SquareConnect::ListLocationsResponse](docs/ListLocationsResponse.md)
 - [SquareConnect::ListRefundsRequest](docs/ListRefundsRequest.md)
 - [SquareConnect::ListRefundsResponse](docs/ListRefundsResponse.md)
 - [SquareConnect::ListTransactionsRequest](docs/ListTransactionsRequest.md)
 - [SquareConnect::ListTransactionsResponse](docs/ListTransactionsResponse.md)
 - [SquareConnect::Location](docs/Location.md)
 - [SquareConnect::LocationCapability](docs/LocationCapability.md)
 - [SquareConnect::Money](docs/Money.md)
 - [SquareConnect::Order](docs/Order.md)
 - [SquareConnect::OrderLineItem](docs/OrderLineItem.md)
 - [SquareConnect::OrderLineItemDiscount](docs/OrderLineItemDiscount.md)
 - [SquareConnect::OrderLineItemDiscountScope](docs/OrderLineItemDiscountScope.md)
 - [SquareConnect::OrderLineItemDiscountType](docs/OrderLineItemDiscountType.md)
 - [SquareConnect::OrderLineItemTax](docs/OrderLineItemTax.md)
 - [SquareConnect::OrderLineItemTaxType](docs/OrderLineItemTaxType.md)
 - [SquareConnect::Refund](docs/Refund.md)
 - [SquareConnect::RefundStatus](docs/RefundStatus.md)
 - [SquareConnect::RetrieveCatalogObjectRequest](docs/RetrieveCatalogObjectRequest.md)
 - [SquareConnect::RetrieveCatalogObjectResponse](docs/RetrieveCatalogObjectResponse.md)
 - [SquareConnect::RetrieveCustomerRequest](docs/RetrieveCustomerRequest.md)
 - [SquareConnect::RetrieveCustomerResponse](docs/RetrieveCustomerResponse.md)
 - [SquareConnect::RetrieveTransactionRequest](docs/RetrieveTransactionRequest.md)
 - [SquareConnect::RetrieveTransactionResponse](docs/RetrieveTransactionResponse.md)
 - [SquareConnect::SearchCatalogObjectsRequest](docs/SearchCatalogObjectsRequest.md)
 - [SquareConnect::SearchCatalogObjectsResponse](docs/SearchCatalogObjectsResponse.md)
 - [SquareConnect::SortOrder](docs/SortOrder.md)
 - [SquareConnect::TaxCalculationPhase](docs/TaxCalculationPhase.md)
 - [SquareConnect::TaxInclusionType](docs/TaxInclusionType.md)
 - [SquareConnect::Tender](docs/Tender.md)
 - [SquareConnect::TenderCardDetails](docs/TenderCardDetails.md)
 - [SquareConnect::TenderCardDetailsEntryMethod](docs/TenderCardDetailsEntryMethod.md)
 - [SquareConnect::TenderCardDetailsStatus](docs/TenderCardDetailsStatus.md)
 - [SquareConnect::TenderCashDetails](docs/TenderCashDetails.md)
 - [SquareConnect::TenderType](docs/TenderType.md)
 - [SquareConnect::Transaction](docs/Transaction.md)
 - [SquareConnect::TransactionProduct](docs/TransactionProduct.md)
 - [SquareConnect::UpdateCustomerRequest](docs/UpdateCustomerRequest.md)
 - [SquareConnect::UpdateCustomerResponse](docs/UpdateCustomerResponse.md)
 - [SquareConnect::UpdateItemModifierListsRequest](docs/UpdateItemModifierListsRequest.md)
 - [SquareConnect::UpdateItemModifierListsResponse](docs/UpdateItemModifierListsResponse.md)
 - [SquareConnect::UpdateItemTaxesRequest](docs/UpdateItemTaxesRequest.md)
 - [SquareConnect::UpdateItemTaxesResponse](docs/UpdateItemTaxesResponse.md)
 - [SquareConnect::UpsertCatalogObjectRequest](docs/UpsertCatalogObjectRequest.md)
 - [SquareConnect::UpsertCatalogObjectResponse](docs/UpsertCatalogObjectResponse.md)
 - [SquareConnect::V1AdjustInventoryRequest](docs/V1AdjustInventoryRequest.md)
 - [SquareConnect::V1BankAccount](docs/V1BankAccount.md)
 - [SquareConnect::V1CashDrawerEvent](docs/V1CashDrawerEvent.md)
 - [SquareConnect::V1CashDrawerShift](docs/V1CashDrawerShift.md)
 - [SquareConnect::V1Category](docs/V1Category.md)
 - [SquareConnect::V1CreateRefundRequest](docs/V1CreateRefundRequest.md)
 - [SquareConnect::V1Discount](docs/V1Discount.md)
 - [SquareConnect::V1Employee](docs/V1Employee.md)
 - [SquareConnect::V1EmployeeRole](docs/V1EmployeeRole.md)
 - [SquareConnect::V1Fee](docs/V1Fee.md)
 - [SquareConnect::V1InventoryEntry](docs/V1InventoryEntry.md)
 - [SquareConnect::V1Item](docs/V1Item.md)
 - [SquareConnect::V1ItemImage](docs/V1ItemImage.md)
 - [SquareConnect::V1Merchant](docs/V1Merchant.md)
 - [SquareConnect::V1MerchantLocationDetails](docs/V1MerchantLocationDetails.md)
 - [SquareConnect::V1ModifierList](docs/V1ModifierList.md)
 - [SquareConnect::V1ModifierOption](docs/V1ModifierOption.md)
 - [SquareConnect::V1Money](docs/V1Money.md)
 - [SquareConnect::V1Order](docs/V1Order.md)
 - [SquareConnect::V1OrderHistoryEntry](docs/V1OrderHistoryEntry.md)
 - [SquareConnect::V1Page](docs/V1Page.md)
 - [SquareConnect::V1PageCell](docs/V1PageCell.md)
 - [SquareConnect::V1Payment](docs/V1Payment.md)
 - [SquareConnect::V1PaymentDiscount](docs/V1PaymentDiscount.md)
 - [SquareConnect::V1PaymentItemDetail](docs/V1PaymentItemDetail.md)
 - [SquareConnect::V1PaymentItemization](docs/V1PaymentItemization.md)
 - [SquareConnect::V1PaymentModifier](docs/V1PaymentModifier.md)
 - [SquareConnect::V1PaymentTax](docs/V1PaymentTax.md)
 - [SquareConnect::V1PhoneNumber](docs/V1PhoneNumber.md)
 - [SquareConnect::V1Refund](docs/V1Refund.md)
 - [SquareConnect::V1Settlement](docs/V1Settlement.md)
 - [SquareConnect::V1SettlementEntry](docs/V1SettlementEntry.md)
 - [SquareConnect::V1Tender](docs/V1Tender.md)
 - [SquareConnect::V1Timecard](docs/V1Timecard.md)
 - [SquareConnect::V1TimecardEvent](docs/V1TimecardEvent.md)
 - [SquareConnect::V1UpdateModifierListRequest](docs/V1UpdateModifierListRequest.md)
 - [SquareConnect::V1UpdateOrderRequest](docs/V1UpdateOrderRequest.md)
 - [SquareConnect::V1Variation](docs/V1Variation.md)
 - [SquareConnect::VoidTransactionRequest](docs/VoidTransactionRequest.md)
 - [SquareConnect::VoidTransactionResponse](docs/VoidTransactionResponse.md)


## Documentation for Authorization


### oauth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: `https://connect.squareup.com/oauth2/authorize?<PARAMETERS>`
- **Scopes**: 
  - MERCHANT_PROFILE_READ: GET endpoints related to a merchant&#39;s business and location entities. Almost all Connect API applications need this permission in order to obtain a merchant&#39;s location IDs
  - PAYMENTS_READ: GET endpoints related to transactions and refunds
  - PAYMENTS_WRITE: POST, PUT, and DELETE endpoints related to transactions and refunds. E-commerce applications must request this permission
  - CUSTOMERS_READ:  GET endpoints related to customer management
  - CUSTOMERS_WRITE: POST, PUT, and DELETE endpoints related to customer management
  - SETTLEMENTS_READ: GET endpoints related to settlements (deposits)
  - BANK_ACCOUNTS_READ: GET endpoints related to a merchant&#39;s bank accounts
  - ITEMS_READ: GET endpoints related to a merchant&#39;s item library
  - ITEMS_WRITE: POST, PUT, and DELETE endpoints related to a merchant&#39;s item library
  - ORDERS_READ: GET endpoints related to a merchant&#39;s Square online store.
  - ORDERS_WRITE: POST, PUT, and DELETE endpoints related to a merchant&#39;s Square online store
  - EMPLOYEES_READ: GET endpoints related to employee management
  - EMPLOYEES_WRITE: POST, PUT, and DELETE endpoints related to employee management
  - TIMECARDS_READ: GET endpoints related to employee timecards
  - TIMECARDS_WRITE: POST, PUT, and DELETE endpoints related to employee timecards


Contributing
------------

Send bug reports, feature requests, and code contributions to the [API
specifications repository](https://github.com/square/connect-api-specification),
as this repository contains only the generated SDK code.

License
-------

```
Copyright 2017 Square, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
