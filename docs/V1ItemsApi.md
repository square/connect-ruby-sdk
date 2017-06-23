# SquareConnect::V1ItemsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adjust_inventory**](V1ItemsApi.md#adjust_inventory) | **POST** /v1/{location_id}/inventory/{variation_id} | Adjusts an item variation&#39;s current available inventory.
[**apply_fee**](V1ItemsApi.md#apply_fee) | **PUT** /v1/{location_id}/items/{item_id}/fees/{fee_id} | Associates a fee with an item, meaning the fee is automatically applied to the item in Square Register.
[**apply_modifier_list**](V1ItemsApi.md#apply_modifier_list) | **PUT** /v1/{location_id}/items/{item_id}/modifier-lists/{modifier_list_id} | Associates a modifier list with an item, meaning modifier options from the list can be applied to the item.
[**create_category**](V1ItemsApi.md#create_category) | **POST** /v1/{location_id}/categories | Creates an item category.
[**create_discount**](V1ItemsApi.md#create_discount) | **POST** /v1/{location_id}/discounts | Creates a discount.
[**create_fee**](V1ItemsApi.md#create_fee) | **POST** /v1/{location_id}/fees | Creates a fee (tax).
[**create_item**](V1ItemsApi.md#create_item) | **POST** /v1/{location_id}/items | Creates an item and at least one variation for it.
[**create_modifier_list**](V1ItemsApi.md#create_modifier_list) | **POST** /v1/{location_id}/modifier-lists | Creates an item modifier list and at least one modifier option for it.
[**create_modifier_option**](V1ItemsApi.md#create_modifier_option) | **POST** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options | Creates an item modifier option and adds it to a modifier list.
[**create_page**](V1ItemsApi.md#create_page) | **POST** /v1/{location_id}/pages | Creates a Favorites page in Square Register.
[**create_variation**](V1ItemsApi.md#create_variation) | **POST** /v1/{location_id}/items/{item_id}/variations | Creates an item variation for an existing item.
[**delete_category**](V1ItemsApi.md#delete_category) | **DELETE** /v1/{location_id}/categories/{category_id} | Deletes an existing item category.
[**delete_discount**](V1ItemsApi.md#delete_discount) | **DELETE** /v1/{location_id}/discounts/{discount_id} | Deletes an existing discount.
[**delete_fee**](V1ItemsApi.md#delete_fee) | **DELETE** /v1/{location_id}/fees/{fee_id} | Deletes an existing fee (tax).
[**delete_item**](V1ItemsApi.md#delete_item) | **DELETE** /v1/{location_id}/items/{item_id} | Deletes an existing item and all item variations associated with it.
[**delete_modifier_list**](V1ItemsApi.md#delete_modifier_list) | **DELETE** /v1/{location_id}/modifier-lists/{modifier_list_id} | Deletes an existing item modifier list and all modifier options associated with it.
[**delete_modifier_option**](V1ItemsApi.md#delete_modifier_option) | **DELETE** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options/{modifier_option_id} | Deletes an existing item modifier option from a modifier list.
[**delete_page**](V1ItemsApi.md#delete_page) | **DELETE** /v1/{location_id}/pages/{page_id} | Deletes an existing Favorites page and all of its cells.
[**delete_page_cell**](V1ItemsApi.md#delete_page_cell) | **DELETE** /v1/{location_id}/pages/{page_id}/cells | Deletes a cell from a Favorites page in Square Register.
[**delete_variation**](V1ItemsApi.md#delete_variation) | **DELETE** /v1/{location_id}/items/{item_id}/variations/{variation_id} | Deletes an existing item variation from an item.
[**list_categories**](V1ItemsApi.md#list_categories) | **GET** /v1/{location_id}/categories | Lists all of a location&#39;s item categories.
[**list_discounts**](V1ItemsApi.md#list_discounts) | **GET** /v1/{location_id}/discounts | Lists all of a location&#39;s discounts.
[**list_fees**](V1ItemsApi.md#list_fees) | **GET** /v1/{location_id}/fees | Lists all of a location&#39;s fees (taxes).
[**list_inventory**](V1ItemsApi.md#list_inventory) | **GET** /v1/{location_id}/inventory | Provides inventory information for all of a merchant&#39;s inventory-enabled item variations.
[**list_items**](V1ItemsApi.md#list_items) | **GET** /v1/{location_id}/items | Provides summary information for all of a location&#39;s items.
[**list_modifier_lists**](V1ItemsApi.md#list_modifier_lists) | **GET** /v1/{location_id}/modifier-lists | Lists all of a location&#39;s modifier lists.
[**list_pages**](V1ItemsApi.md#list_pages) | **GET** /v1/{location_id}/pages | Lists all of a location&#39;s Favorites pages in Square Register.
[**remove_fee**](V1ItemsApi.md#remove_fee) | **DELETE** /v1/{location_id}/items/{item_id}/fees/{fee_id} | Removes a fee assocation from an item, meaning the fee is no longer automatically applied to the item in Square Register.
[**remove_modifier_list**](V1ItemsApi.md#remove_modifier_list) | **DELETE** /v1/{location_id}/items/{item_id}/modifier-lists/{modifier_list_id} | Removes a modifier list association from an item, meaning modifier options from the list can no longer be applied to the item.
[**retrieve_item**](V1ItemsApi.md#retrieve_item) | **GET** /v1/{location_id}/items/{item_id} | Provides the details for a single item, including associated modifier lists and fees.
[**retrieve_modifier_list**](V1ItemsApi.md#retrieve_modifier_list) | **GET** /v1/{location_id}/modifier-lists/{modifier_list_id} | Provides the details for a single modifier list.
[**update_category**](V1ItemsApi.md#update_category) | **PUT** /v1/{location_id}/categories/{category_id} | Modifies the details of an existing item category.
[**update_discount**](V1ItemsApi.md#update_discount) | **PUT** /v1/{location_id}/discounts/{discount_id} | Modifies the details of an existing discount.
[**update_fee**](V1ItemsApi.md#update_fee) | **PUT** /v1/{location_id}/fees/{fee_id} | Modifies the details of an existing fee (tax).
[**update_item**](V1ItemsApi.md#update_item) | **PUT** /v1/{location_id}/items/{item_id} | Modifies the core details of an existing item.
[**update_modifier_list**](V1ItemsApi.md#update_modifier_list) | **PUT** /v1/{location_id}/modifier-lists/{modifier_list_id} | Modifies the details of an existing item modifier list.
[**update_modifier_option**](V1ItemsApi.md#update_modifier_option) | **PUT** /v1/{location_id}/modifier-lists/{modifier_list_id}/modifier-options/{modifier_option_id} | Modifies the details of an existing item modifier option.
[**update_page**](V1ItemsApi.md#update_page) | **PUT** /v1/{location_id}/pages/{page_id} | Modifies the details of a Favorites page in Square Register.
[**update_page_cell**](V1ItemsApi.md#update_page_cell) | **PUT** /v1/{location_id}/pages/{page_id}/cells | Modifies a cell of a Favorites page in Square Register.
[**update_variation**](V1ItemsApi.md#update_variation) | **PUT** /v1/{location_id}/items/{item_id}/variations/{variation_id} | Modifies the details of an existing item variation.


# **adjust_inventory**
> V1InventoryEntry adjust_inventory(location_id, variation_id, body)

Adjusts an item variation's current available inventory.

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
  #Adjusts an item variation's current available inventory.
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

Associates a fee with an item, meaning the fee is automatically applied to the item in Square Register.

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
  #Associates a fee with an item, meaning the fee is automatically applied to the item in Square Register.
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

Associates a modifier list with an item, meaning modifier options from the list can be applied to the item.

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
  #Associates a modifier list with an item, meaning modifier options from the list can be applied to the item.
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

Creates an item category.

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
  #Creates an item category.
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

Creates a discount.

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
  #Creates a discount.
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

Creates a fee (tax).

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
  #Creates a fee (tax).
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
> V1Item create_item(location_id, body, opts)

Creates an item and at least one variation for it.

Creates an item and at least one variation for it.

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

opts = { 
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #Creates an item and at least one variation for it.
  result = api_instance.create_item(location_id, body, opts)
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
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**V1Item**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_modifier_list**
> V1ModifierList create_modifier_list(location_id, body)

Creates an item modifier list and at least one modifier option for it.

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
  #Creates an item modifier list and at least one modifier option for it.
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

Creates an item modifier option and adds it to a modifier list.

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
  #Creates an item modifier option and adds it to a modifier list.
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

Creates a Favorites page in Square Register.

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
  #Creates a Favorites page in Square Register.
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

Creates an item variation for an existing item.

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
  #Creates an item variation for an existing item.
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

Deletes an existing item category.

Deletes an existing item category.

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
  #Deletes an existing item category.
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

Deletes an existing discount.

Deletes an existing discount.

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
  #Deletes an existing discount.
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

Deletes an existing fee (tax).

Deletes an existing fee (tax).

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
  #Deletes an existing fee (tax).
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

Deletes an existing item and all item variations associated with it.

Deletes an existing item and all item variations associated with it.

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
  #Deletes an existing item and all item variations associated with it.
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

Deletes an existing item modifier list and all modifier options associated with it.

Deletes an existing item modifier list and all modifier options associated with it.

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
  #Deletes an existing item modifier list and all modifier options associated with it.
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

Deletes an existing item modifier option from a modifier list.

Deletes an existing item modifier option from a modifier list.

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
  #Deletes an existing item modifier option from a modifier list.
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

Deletes an existing Favorites page and all of its cells.

Deletes an existing Favorites page and all of its cells.

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
  #Deletes an existing Favorites page and all of its cells.
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

Deletes a cell from a Favorites page in Square Register.

Deletes a cell from a Favorites page in Square Register.

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
  #Deletes a cell from a Favorites page in Square Register.
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

Deletes an existing item variation from an item.

Deletes an existing item variation from an item.

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
  #Deletes an existing item variation from an item.
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

Lists all of a location's item categories.

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
  #Lists all of a location's item categories.
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

Lists all of a location's discounts.

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
  #Lists all of a location's discounts.
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

Lists all of a location's fees (taxes).

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
  #Lists all of a location's fees (taxes).
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

Provides inventory information for all of a merchant's inventory-enabled item variations.

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
  #Provides inventory information for all of a merchant's inventory-enabled item variations.
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
> Array&lt;V1Item&gt; list_items(location_id)

Provides summary information for all of a location's items.

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


begin
  #Provides summary information for all of a location's items.
  result = api_instance.list_items(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1ItemsApi->list_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list items for. | 

### Return type

[**Array&lt;V1Item&gt;**](V1Item.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_modifier_lists**
> Array&lt;V1ModifierList&gt; list_modifier_lists(location_id)

Lists all of a location's modifier lists.

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
  #Lists all of a location's modifier lists.
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

Lists all of a location's Favorites pages in Square Register.

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
  #Lists all of a location's Favorites pages in Square Register.
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

Removes a fee assocation from an item, meaning the fee is no longer automatically applied to the item in Square Register.

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
  #Removes a fee assocation from an item, meaning the fee is no longer automatically applied to the item in Square Register.
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

Removes a modifier list association from an item, meaning modifier options from the list can no longer be applied to the item.

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
  #Removes a modifier list association from an item, meaning modifier options from the list can no longer be applied to the item.
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

Provides the details for a single item, including associated modifier lists and fees.

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
  #Provides the details for a single item, including associated modifier lists and fees.
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

Provides the details for a single modifier list.

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
  #Provides the details for a single modifier list.
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

Modifies the details of an existing item category.

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
  #Modifies the details of an existing item category.
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

Modifies the details of an existing discount.

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
  #Modifies the details of an existing discount.
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

Modifies the details of an existing fee (tax).

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
  #Modifies the details of an existing fee (tax).
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

Modifies the core details of an existing item.

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
  #Modifies the core details of an existing item.
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

Modifies the details of an existing item modifier list.

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
  #Modifies the details of an existing item modifier list.
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

Modifies the details of an existing item modifier option.

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
  #Modifies the details of an existing item modifier option.
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

Modifies the details of a Favorites page in Square Register.

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
  #Modifies the details of a Favorites page in Square Register.
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

Modifies a cell of a Favorites page in Square Register.

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
  #Modifies a cell of a Favorites page in Square Register.
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

Modifies the details of an existing item variation.

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
  #Modifies the details of an existing item variation.
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



