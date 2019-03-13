# SquareConnect::V1ItemsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adjust_inventory**](V1ItemsApi.md#adjust_inventory) | **POST** /v1/{location_id}/inventory/{variation_id} | AdjustInventory
[**apply_fee**](V1ItemsApi.md#apply_fee) | **PUT** /v1/{location_id}/items/{item_id}/fees/{fee_id} | ApplyFee
[**apply_modifier_list**](V1ItemsApi.md#apply_modifier_list) | **PUT** /v1/{location_id}/items/{item_id}/modifier-lists/{modifier_list_id} | ApplyModifierList
[**create_category**](V1ItemsApi.md#create_category) | **POST** /v1/{location_id}/categories | CreateCategory
[**create_discount**](V1ItemsApi.md#create_discount) | **POST** /v1/{location_id}/discounts | CreateDiscount
[**create_fee**](V1ItemsApi.md#create_fee) | **POST** /v1/{location_id}/fees | CreateFee
[**create_item**](V1ItemsApi.md#create_item) | **POST** /v1/{location_id}/items | CreateItem
[**create_modifier_list**](V1ItemsApi.md#create_modifier_list) | **POST** /v1/{location_id}/modifier-lists | CreateModifierList
[**create_modifier_option**](V1ItemsApi.md#create_modifier_option) | **POST** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options | CreateModifierOption
[**create_page**](V1ItemsApi.md#create_page) | **POST** /v1/{location_id}/pages | CreatePage
[**create_variation**](V1ItemsApi.md#create_variation) | **POST** /v1/{location_id}/items/{item_id}/variations | CreateVariation
[**delete_category**](V1ItemsApi.md#delete_category) | **DELETE** /v1/{location_id}/categories/{category_id} | DeleteCategory
[**delete_discount**](V1ItemsApi.md#delete_discount) | **DELETE** /v1/{location_id}/discounts/{discount_id} | DeleteDiscount
[**delete_fee**](V1ItemsApi.md#delete_fee) | **DELETE** /v1/{location_id}/fees/{fee_id} | DeleteFee
[**delete_item**](V1ItemsApi.md#delete_item) | **DELETE** /v1/{location_id}/items/{item_id} | DeleteItem
[**delete_modifier_list**](V1ItemsApi.md#delete_modifier_list) | **DELETE** /v1/{location_id}/modifier-lists/{modifier_list_id} | DeleteModifierList
[**delete_modifier_option**](V1ItemsApi.md#delete_modifier_option) | **DELETE** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options/{modifier_option_id} | DeleteModifierOption
[**delete_page**](V1ItemsApi.md#delete_page) | **DELETE** /v1/{location_id}/pages/{page_id} | DeletePage
[**delete_page_cell**](V1ItemsApi.md#delete_page_cell) | **DELETE** /v1/{location_id}/pages/{page_id}/cells | DeletePageCell
[**delete_variation**](V1ItemsApi.md#delete_variation) | **DELETE** /v1/{location_id}/items/{item_id}/variations/{variation_id} | DeleteVariation
[**list_categories**](V1ItemsApi.md#list_categories) | **GET** /v1/{location_id}/categories | ListCategories
[**list_discounts**](V1ItemsApi.md#list_discounts) | **GET** /v1/{location_id}/discounts | ListDiscounts
[**list_fees**](V1ItemsApi.md#list_fees) | **GET** /v1/{location_id}/fees | ListFees
[**list_inventory**](V1ItemsApi.md#list_inventory) | **GET** /v1/{location_id}/inventory | ListInventory
[**list_items**](V1ItemsApi.md#list_items) | **GET** /v1/{location_id}/items | ListItems
[**list_modifier_lists**](V1ItemsApi.md#list_modifier_lists) | **GET** /v1/{location_id}/modifier-lists | ListModifierLists
[**list_pages**](V1ItemsApi.md#list_pages) | **GET** /v1/{location_id}/pages | ListPages
[**remove_fee**](V1ItemsApi.md#remove_fee) | **DELETE** /v1/{location_id}/items/{item_id}/fees/{fee_id} | RemoveFee
[**remove_modifier_list**](V1ItemsApi.md#remove_modifier_list) | **DELETE** /v1/{location_id}/items/{item_id}/modifier-lists/{modifier_list_id} | RemoveModifierList
[**retrieve_item**](V1ItemsApi.md#retrieve_item) | **GET** /v1/{location_id}/items/{item_id} | RetrieveItem
[**retrieve_modifier_list**](V1ItemsApi.md#retrieve_modifier_list) | **GET** /v1/{location_id}/modifier-lists/{modifier_list_id} | RetrieveModifierList
[**update_category**](V1ItemsApi.md#update_category) | **PUT** /v1/{location_id}/categories/{category_id} | UpdateCategory
[**update_discount**](V1ItemsApi.md#update_discount) | **PUT** /v1/{location_id}/discounts/{discount_id} | UpdateDiscount
[**update_fee**](V1ItemsApi.md#update_fee) | **PUT** /v1/{location_id}/fees/{fee_id} | UpdateFee
[**update_item**](V1ItemsApi.md#update_item) | **PUT** /v1/{location_id}/items/{item_id} | UpdateItem
[**update_modifier_list**](V1ItemsApi.md#update_modifier_list) | **PUT** /v1/{location_id}/modifier-lists/{modifier_list_id} | UpdateModifierList
[**update_modifier_option**](V1ItemsApi.md#update_modifier_option) | **PUT** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options/{modifier_option_id} | UpdateModifierOption
[**update_page**](V1ItemsApi.md#update_page) | **PUT** /v1/{location_id}/pages/{page_id} | UpdatePage
[**update_page_cell**](V1ItemsApi.md#update_page_cell) | **PUT** /v1/{location_id}/pages/{page_id}/cells | UpdatePageCell
[**update_variation**](V1ItemsApi.md#update_variation) | **PUT** /v1/{location_id}/items/{item_id}/variations/{variation_id} | UpdateVariation


# **adjust_inventory**
> V1InventoryEntry adjust_inventory(location_id, variation_id, body)

AdjustInventory

Adjusts an item variation's current available inventory.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

variation_id = "variation_id_example" # String | The ID of the variation to adjust inventory information for.

body = SquareConnect::V1AdjustInventoryRequest.new # V1AdjustInventoryRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #AdjustInventory
  result = api_instance.adjust_inventory(location_id, variation_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->adjust_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **variation_id** | **String**| The ID of the variation to adjust inventory information for. | 
 **body** | [**V1AdjustInventoryRequest**](V1AdjustInventoryRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1InventoryEntry**](V1InventoryEntry.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apply_fee**
> V1Item apply_fee(location_id, item_id, fee_id)

ApplyFee

Associates a fee with an item, meaning the fee is automatically applied to the item in Square Register.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the fee's associated location.

item_id = "item_id_example" # String | The ID of the item to add the fee to.

fee_id = "fee_id_example" # String | The ID of the fee to apply.


begin
  #ApplyFee
  result = api_instance.apply_fee(location_id, item_id, fee_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->apply_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the fee&#39;s associated location. | 
 **item_id** | **String**| The ID of the item to add the fee to. | 
 **fee_id** | **String**| The ID of the fee to apply. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **apply_modifier_list**
> V1Item apply_modifier_list(location_id, modifier_list_id, item_id)

ApplyModifierList

Associates a modifier list with an item, meaning modifier options from the list can be applied to the item.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The ID of the modifier list to apply.

item_id = "item_id_example" # String | The ID of the item to add the modifier list to.


begin
  #ApplyModifierList
  result = api_instance.apply_modifier_list(location_id, modifier_list_id, item_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->apply_modifier_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The ID of the modifier list to apply. | 
 **item_id** | **String**| The ID of the item to add the modifier list to. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_category**
> V1Category create_category(location_id, body)

CreateCategory

Creates an item category.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to create an item for.

body = SquareConnect::V1Category.new # V1Category | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateCategory
  result = api_instance.create_category(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to create an item for. | 
 **body** | [**V1Category**](V1Category.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Category**](V1Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_discount**
> V1Discount create_discount(location_id, body)

CreateDiscount

Creates a discount.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to create an item for.

body = SquareConnect::V1Discount.new # V1Discount | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateDiscount
  result = api_instance.create_discount(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to create an item for. | 
 **body** | [**V1Discount**](V1Discount.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Discount**](V1Discount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_fee**
> V1Fee create_fee(location_id, body)

CreateFee

Creates a fee (tax).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to create a fee for.

body = SquareConnect::V1Fee.new # V1Fee | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateFee
  result = api_instance.create_fee(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to create a fee for. | 
 **body** | [**V1Fee**](V1Fee.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Fee**](V1Fee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_item**
> V1Item create_item(location_id, body)

CreateItem

Creates an item and at least one variation for it. Item-related entities include fields you can use to associate them with entities in a non-Square system.  When you create an item-related entity, you can optionally specify its `id`. This value must be unique among all IDs ever specified for the account, including those specified by other applications. You can never reuse an entity ID. If you do not specify an ID, Square generates one for the entity.  Item variations have a `user_data` string that lets you associate arbitrary metadata with the variation. The string cannot exceed 255 characters.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to create an item for.

body = SquareConnect::V1Item.new # V1Item | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateItem
  result = api_instance.create_item(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to create an item for. | 
 **body** | [**V1Item**](V1Item.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_modifier_list**
> V1ModifierList create_modifier_list(location_id, body)

CreateModifierList

Creates an item modifier list and at least one modifier option for it.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to create a modifier list for.

body = SquareConnect::V1ModifierList.new # V1ModifierList | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateModifierList
  result = api_instance.create_modifier_list(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_modifier_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to create a modifier list for. | 
 **body** | [**V1ModifierList**](V1ModifierList.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1ModifierList**](V1ModifierList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_modifier_option**
> V1ModifierOption create_modifier_option(location_id, modifier_list_id, body)

CreateModifierOption

Creates an item modifier option and adds it to a modifier list.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The ID of the modifier list to edit.

body = SquareConnect::V1ModifierOption.new # V1ModifierOption | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateModifierOption
  result = api_instance.create_modifier_option(location_id, modifier_list_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_modifier_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The ID of the modifier list to edit. | 
 **body** | [**V1ModifierOption**](V1ModifierOption.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1ModifierOption**](V1ModifierOption.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_page**
> V1Page create_page(location_id, body)

CreatePage

Creates a Favorites page in Square Register.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to create an item for.

body = SquareConnect::V1Page.new # V1Page | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreatePage
  result = api_instance.create_page(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to create an item for. | 
 **body** | [**V1Page**](V1Page.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Page**](V1Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_variation**
> V1Variation create_variation(location_id, item_id, body)

CreateVariation

Creates an item variation for an existing item.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

item_id = "item_id_example" # String | The item's ID.

body = SquareConnect::V1Variation.new # V1Variation | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateVariation
  result = api_instance.create_variation(location_id, item_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->create_variation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **item_id** | **String**| The item&#39;s ID. | 
 **body** | [**V1Variation**](V1Variation.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Variation**](V1Variation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_category**
> V1Category delete_category(location_id, category_id)

DeleteCategory

Deletes an existing item category. *Note**: DeleteCategory returns nothing on success but Connect SDKs map the empty response to an empty `V1DeleteCategoryRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

category_id = "category_id_example" # String | The ID of the category to delete.


begin
  #DeleteCategory
  result = api_instance.delete_category(location_id, category_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **category_id** | **String**| The ID of the category to delete. | 

### Return type

[**V1Category**](V1Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_discount**
> V1Discount delete_discount(location_id, discount_id)

DeleteDiscount

Deletes an existing discount. *Note**: DeleteDiscount returns nothing on success but Connect SDKs map the empty response to an empty `V1DeleteDiscountRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

discount_id = "discount_id_example" # String | The ID of the discount to delete.


begin
  #DeleteDiscount
  result = api_instance.delete_discount(location_id, discount_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **discount_id** | **String**| The ID of the discount to delete. | 

### Return type

[**V1Discount**](V1Discount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_fee**
> V1Fee delete_fee(location_id, fee_id)

DeleteFee

Deletes an existing fee (tax). *Note**: DeleteFee returns nothing on success but Connect SDKs map the empty response to an empty `V1DeleteFeeRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the fee's associated location.

fee_id = "fee_id_example" # String | The ID of the fee to delete.


begin
  #DeleteFee
  result = api_instance.delete_fee(location_id, fee_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the fee&#39;s associated location. | 
 **fee_id** | **String**| The ID of the fee to delete. | 

### Return type

[**V1Fee**](V1Fee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_item**
> V1Item delete_item(location_id, item_id)

DeleteItem

Deletes an existing item and all item variations associated with it. *Note**: DeleteItem returns nothing on success but Connect SDKs map the empty response to an empty `V1DeleteItemRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

item_id = "item_id_example" # String | The ID of the item to modify.


begin
  #DeleteItem
  result = api_instance.delete_item(location_id, item_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **item_id** | **String**| The ID of the item to modify. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_modifier_list**
> V1ModifierList delete_modifier_list(location_id, modifier_list_id)

DeleteModifierList

Deletes an existing item modifier list and all modifier options associated with it. *Note**: DeleteModifierList returns nothing on success but Connect SDKs map the empty response to an empty `V1DeleteModifierListRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The ID of the modifier list to delete.


begin
  #DeleteModifierList
  result = api_instance.delete_modifier_list(location_id, modifier_list_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_modifier_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The ID of the modifier list to delete. | 

### Return type

[**V1ModifierList**](V1ModifierList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_modifier_option**
> V1ModifierOption delete_modifier_option(location_id, modifier_list_id, modifier_option_id)

DeleteModifierOption

Deletes an existing item modifier option from a modifier list. *Note**: DeleteModifierOption returns nothing on success but Connect SDKs map the empty response to an empty `V1DeleteModifierOptionRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The ID of the modifier list to delete.

modifier_option_id = "modifier_option_id_example" # String | The ID of the modifier list to edit.


begin
  #DeleteModifierOption
  result = api_instance.delete_modifier_option(location_id, modifier_list_id, modifier_option_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_modifier_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The ID of the modifier list to delete. | 
 **modifier_option_id** | **String**| The ID of the modifier list to edit. | 

### Return type

[**V1ModifierOption**](V1ModifierOption.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page**
> V1Page delete_page(location_id, page_id)

DeletePage

Deletes an existing Favorites page and all of its cells. *Note**: DeletePage returns nothing on success but Connect SDKs map the empty response to an empty `V1DeletePageRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the Favorites page's associated location.

page_id = "page_id_example" # String | The ID of the page to delete.


begin
  #DeletePage
  result = api_instance.delete_page(location_id, page_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the Favorites page&#39;s associated location. | 
 **page_id** | **String**| The ID of the page to delete. | 

### Return type

[**V1Page**](V1Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_page_cell**
> V1Page delete_page_cell(location_id, page_id, opts)

DeletePageCell

Deletes a cell from a Favorites page in Square Register. *Note**: DeletePageCell returns nothing on success but Connect SDKs map the empty response to an empty `V1DeletePageCellRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the Favorites page's associated location.

page_id = "page_id_example" # String | The ID of the page to delete.

opts = { 
  row: "row_example", # String | The row of the cell to clear. Always an integer between 0 and 4, inclusive. Row 0 is the top row.
  column: "column_example" # String | The column of the cell to clear. Always an integer between 0 and 4, inclusive. Column 0 is the leftmost column.
}

begin
  #DeletePageCell
  result = api_instance.delete_page_cell(location_id, page_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_page_cell: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the Favorites page&#39;s associated location. | 
 **page_id** | **String**| The ID of the page to delete. | 
 **row** | **String**| The row of the cell to clear. Always an integer between 0 and 4, inclusive. Row 0 is the top row. | [optional] 
 **column** | **String**| The column of the cell to clear. Always an integer between 0 and 4, inclusive. Column 0 is the leftmost column. | [optional] 

### Return type

[**V1Page**](V1Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_variation**
> V1Variation delete_variation(location_id, item_id, variation_id)

DeleteVariation

Deletes an existing item variation from an item. *Note**: DeleteVariation returns nothing on success but Connect SDKs map the empty response to an empty `V1DeleteVariationRequest` object as documented below.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

item_id = "item_id_example" # String | The ID of the item to delete.

variation_id = "variation_id_example" # String | The ID of the variation to delete.


begin
  #DeleteVariation
  result = api_instance.delete_variation(location_id, item_id, variation_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->delete_variation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **item_id** | **String**| The ID of the item to delete. | 
 **variation_id** | **String**| The ID of the variation to delete. | 

### Return type

[**V1Variation**](V1Variation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_categories**
> Array&lt;V1Category&gt; list_categories(location_id)

ListCategories

Lists all of a location's item categories.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to list categories for.


begin
  #ListCategories
  result = api_instance.list_categories(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list categories for. | 

### Return type

[**Array&lt;V1Category&gt;**](V1Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_discounts**
> Array&lt;V1Discount&gt; list_discounts(location_id)

ListDiscounts

Lists all of a location's discounts.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to list categories for.


begin
  #ListDiscounts
  result = api_instance.list_discounts(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_discounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list categories for. | 

### Return type

[**Array&lt;V1Discount&gt;**](V1Discount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_fees**
> Array&lt;V1Fee&gt; list_fees(location_id)

ListFees

Lists all of a location's fees (taxes).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to list fees for.


begin
  #ListFees
  result = api_instance.list_fees(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_fees: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list fees for. | 

### Return type

[**Array&lt;V1Fee&gt;**](V1Fee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_inventory**
> Array&lt;V1InventoryEntry&gt; list_inventory(location_id, opts)

ListInventory

Provides inventory information for all of a merchant's inventory-enabled item variations.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

opts = { 
  limit: 56, # Integer | The maximum number of inventory entries to return in a single response. This value cannot exceed 1000.
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListInventory
  result = api_instance.list_inventory(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_inventory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **limit** | **Integer**| The maximum number of inventory entries to return in a single response. This value cannot exceed 1000. | [optional] 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1InventoryEntry&gt;**](V1InventoryEntry.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_items**
> Array&lt;V1Item&gt; list_items(location_id, opts)

ListItems

Provides summary information for all of a location's items.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to list items for.

opts = { 
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListItems
  result = api_instance.list_items(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list items for. | 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1Item&gt;**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_modifier_lists**
> Array&lt;V1ModifierList&gt; list_modifier_lists(location_id)

ListModifierLists

Lists all of a location's modifier lists.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to list modifier lists for.


begin
  #ListModifierLists
  result = api_instance.list_modifier_lists(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_modifier_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list modifier lists for. | 

### Return type

[**Array&lt;V1ModifierList&gt;**](V1ModifierList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_pages**
> Array&lt;V1Page&gt; list_pages(location_id)

ListPages

Lists all of a location's Favorites pages in Square Register.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the location to list Favorites pages for.


begin
  #ListPages
  result = api_instance.list_pages(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_pages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list Favorites pages for. | 

### Return type

[**Array&lt;V1Page&gt;**](V1Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_fee**
> V1Item remove_fee(location_id, item_id, fee_id)

RemoveFee

Removes a fee assocation from an item, meaning the fee is no longer automatically applied to the item in Square Register.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the fee's associated location.

item_id = "item_id_example" # String | The ID of the item to add the fee to.

fee_id = "fee_id_example" # String | The ID of the fee to apply.


begin
  #RemoveFee
  result = api_instance.remove_fee(location_id, item_id, fee_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->remove_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the fee&#39;s associated location. | 
 **item_id** | **String**| The ID of the item to add the fee to. | 
 **fee_id** | **String**| The ID of the fee to apply. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_modifier_list**
> V1Item remove_modifier_list(location_id, modifier_list_id, item_id)

RemoveModifierList

Removes a modifier list association from an item, meaning modifier options from the list can no longer be applied to the item.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The ID of the modifier list to remove.

item_id = "item_id_example" # String | The ID of the item to remove the modifier list from.


begin
  #RemoveModifierList
  result = api_instance.remove_modifier_list(location_id, modifier_list_id, item_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->remove_modifier_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The ID of the modifier list to remove. | 
 **item_id** | **String**| The ID of the item to remove the modifier list from. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_item**
> V1Item retrieve_item(location_id, item_id)

RetrieveItem

Provides the details for a single item, including associated modifier lists and fees.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

item_id = "item_id_example" # String | The item's ID.


begin
  #RetrieveItem
  result = api_instance.retrieve_item(location_id, item_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->retrieve_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **item_id** | **String**| The item&#39;s ID. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_modifier_list**
> V1ModifierList retrieve_modifier_list(location_id, modifier_list_id)

RetrieveModifierList

Provides the details for a single modifier list.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The modifier list's ID.


begin
  #RetrieveModifierList
  result = api_instance.retrieve_modifier_list(location_id, modifier_list_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->retrieve_modifier_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The modifier list&#39;s ID. | 

### Return type

[**V1ModifierList**](V1ModifierList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_category**
> V1Category update_category(location_id, category_id, body)

UpdateCategory

Modifies the details of an existing item category.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the category's associated location.

category_id = "category_id_example" # String | The ID of the category to edit.

body = SquareConnect::V1Category.new # V1Category | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateCategory
  result = api_instance.update_category(location_id, category_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the category&#39;s associated location. | 
 **category_id** | **String**| The ID of the category to edit. | 
 **body** | [**V1Category**](V1Category.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Category**](V1Category.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_discount**
> V1Discount update_discount(location_id, discount_id, body)

UpdateDiscount

Modifies the details of an existing discount.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the category's associated location.

discount_id = "discount_id_example" # String | The ID of the discount to edit.

body = SquareConnect::V1Discount.new # V1Discount | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateDiscount
  result = api_instance.update_discount(location_id, discount_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_discount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the category&#39;s associated location. | 
 **discount_id** | **String**| The ID of the discount to edit. | 
 **body** | [**V1Discount**](V1Discount.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Discount**](V1Discount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_fee**
> V1Fee update_fee(location_id, fee_id, body)

UpdateFee

Modifies the details of an existing fee (tax).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the fee's associated location.

fee_id = "fee_id_example" # String | The ID of the fee to edit.

body = SquareConnect::V1Fee.new # V1Fee | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateFee
  result = api_instance.update_fee(location_id, fee_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_fee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the fee&#39;s associated location. | 
 **fee_id** | **String**| The ID of the fee to edit. | 
 **body** | [**V1Fee**](V1Fee.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Fee**](V1Fee.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_item**
> V1Item update_item(location_id, item_id, body)

UpdateItem

Modifies the core details of an existing item.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

item_id = "item_id_example" # String | The ID of the item to modify.

body = SquareConnect::V1Item.new # V1Item | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateItem
  result = api_instance.update_item(location_id, item_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **item_id** | **String**| The ID of the item to modify. | 
 **body** | [**V1Item**](V1Item.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_modifier_list**
> V1ModifierList update_modifier_list(location_id, modifier_list_id, body)

UpdateModifierList

Modifies the details of an existing item modifier list.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The ID of the modifier list to edit.

body = SquareConnect::V1UpdateModifierListRequest.new # V1UpdateModifierListRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateModifierList
  result = api_instance.update_modifier_list(location_id, modifier_list_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_modifier_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The ID of the modifier list to edit. | 
 **body** | [**V1UpdateModifierListRequest**](V1UpdateModifierListRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1ModifierList**](V1ModifierList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_modifier_option**
> V1ModifierOption update_modifier_option(location_id, modifier_list_id, modifier_option_id, body)

UpdateModifierOption

Modifies the details of an existing item modifier option.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

modifier_list_id = "modifier_list_id_example" # String | The ID of the modifier list to edit.

modifier_option_id = "modifier_option_id_example" # String | The ID of the modifier list to edit.

body = SquareConnect::V1ModifierOption.new # V1ModifierOption | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateModifierOption
  result = api_instance.update_modifier_option(location_id, modifier_list_id, modifier_option_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_modifier_option: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **modifier_list_id** | **String**| The ID of the modifier list to edit. | 
 **modifier_option_id** | **String**| The ID of the modifier list to edit. | 
 **body** | [**V1ModifierOption**](V1ModifierOption.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1ModifierOption**](V1ModifierOption.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_page**
> V1Page update_page(location_id, page_id, body)

UpdatePage

Modifies the details of a Favorites page in Square Register.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the Favorites page's associated location

page_id = "page_id_example" # String | The ID of the page to modify.

body = SquareConnect::V1Page.new # V1Page | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdatePage
  result = api_instance.update_page(location_id, page_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the Favorites page&#39;s associated location | 
 **page_id** | **String**| The ID of the page to modify. | 
 **body** | [**V1Page**](V1Page.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Page**](V1Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_page_cell**
> V1Page update_page_cell(location_id, page_id, body)

UpdatePageCell

Modifies a cell of a Favorites page in Square Register.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the Favorites page's associated location.

page_id = "page_id_example" # String | The ID of the page the cell belongs to.

body = SquareConnect::V1PageCell.new # V1PageCell | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdatePageCell
  result = api_instance.update_page_cell(location_id, page_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_page_cell: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the Favorites page&#39;s associated location. | 
 **page_id** | **String**| The ID of the page the cell belongs to. | 
 **body** | [**V1PageCell**](V1PageCell.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Page**](V1Page.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_variation**
> V1Variation update_variation(location_id, item_id, variation_id, body)

UpdateVariation

Modifies the details of an existing item variation.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1ItemsApi.new

location_id = "location_id_example" # String | The ID of the item's associated location.

item_id = "item_id_example" # String | The ID of the item to modify.

variation_id = "variation_id_example" # String | The ID of the variation to modify.

body = SquareConnect::V1Variation.new # V1Variation | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateVariation
  result = api_instance.update_variation(location_id, item_id, variation_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->update_variation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the item&#39;s associated location. | 
 **item_id** | **String**| The ID of the item to modify. | 
 **variation_id** | **String**| The ID of the variation to modify. | 
 **body** | [**V1Variation**](V1Variation.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Variation**](V1Variation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



