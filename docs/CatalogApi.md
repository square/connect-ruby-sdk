# SquareConnect::CatalogApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_delete_catalog_objects**](CatalogApi.md#batch_delete_catalog_objects) | **POST** /v2/catalog/batch-delete | BatchDeleteCatalogObjects
[**batch_retrieve_catalog_objects**](CatalogApi.md#batch_retrieve_catalog_objects) | **POST** /v2/catalog/batch-retrieve | BatchRetrieveCatalogObjects
[**batch_upsert_catalog_objects**](CatalogApi.md#batch_upsert_catalog_objects) | **POST** /v2/catalog/batch-upsert | BatchUpsertCatalogObjects
[**catalog_info**](CatalogApi.md#catalog_info) | **GET** /v2/catalog/info | CatalogInfo
[**delete_catalog_object**](CatalogApi.md#delete_catalog_object) | **DELETE** /v2/catalog/object/{object_id} | DeleteCatalogObject
[**list_catalog**](CatalogApi.md#list_catalog) | **GET** /v2/catalog/list | ListCatalog
[**retrieve_catalog_object**](CatalogApi.md#retrieve_catalog_object) | **GET** /v2/catalog/object/{object_id} | RetrieveCatalogObject
[**search_catalog_objects**](CatalogApi.md#search_catalog_objects) | **POST** /v2/catalog/search | SearchCatalogObjects
[**update_item_modifier_lists**](CatalogApi.md#update_item_modifier_lists) | **POST** /v2/catalog/update-item-modifier-lists | UpdateItemModifierLists
[**update_item_taxes**](CatalogApi.md#update_item_taxes) | **POST** /v2/catalog/update-item-taxes | UpdateItemTaxes
[**upsert_catalog_object**](CatalogApi.md#upsert_catalog_object) | **POST** /v2/catalog/object | UpsertCatalogObject


# **batch_delete_catalog_objects**
> BatchDeleteCatalogObjectsResponse batch_delete_catalog_objects(authorization, body)

BatchDeleteCatalogObjects

Deletes a set of [CatalogItem](#type-catalogitem)s based on the provided list of target IDs and returns a set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a CatalogItem will also delete all of its [CatalogItemVariation](#type-catalogitemvariation) children.  `BatchDeleteCatalogObjects` succeeds even if only a portion of the targeted IDs can be deleted. The response will only include IDs that were actually deleted.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::BatchDeleteCatalogObjectsRequest.new # BatchDeleteCatalogObjectsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchDeleteCatalogObjects
  result = api_instance.batch_delete_catalog_objects(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->batch_delete_catalog_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**BatchDeleteCatalogObjectsRequest**](BatchDeleteCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchDeleteCatalogObjectsResponse**](BatchDeleteCatalogObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **batch_retrieve_catalog_objects**
> BatchRetrieveCatalogObjectsResponse batch_retrieve_catalog_objects(authorization, body)

BatchRetrieveCatalogObjects

Returns a set of objects based on the provided ID. [CatalogItem](#type-catalogitem)s returned in the set include all of the child information including: all [CatalogItemVariation](#type-catalogitemvariation) objects, references to its [CatalogModifierList](#type-catalogmodifierlist) objects, and the ids of any [CatalogTax](#type-catalogtax) objects that apply to it.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::BatchRetrieveCatalogObjectsRequest.new # BatchRetrieveCatalogObjectsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchRetrieveCatalogObjects
  result = api_instance.batch_retrieve_catalog_objects(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->batch_retrieve_catalog_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**BatchRetrieveCatalogObjectsRequest**](BatchRetrieveCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchRetrieveCatalogObjectsResponse**](BatchRetrieveCatalogObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **batch_upsert_catalog_objects**
> BatchUpsertCatalogObjectsResponse batch_upsert_catalog_objects(authorization, body)

BatchUpsertCatalogObjects

Creates or updates up to 10,000 target objects based on the provided list of objects. The target objects are grouped into batches and each batch is inserted/updated in an all-or-nothing manner. If an object within a batch is malformed in some way, or violates a database constraint, the entire batch containing that item will be disregarded. However, other batches in the same request may still succeed. Each batch may contain up to 1,000 objects, and batches will be processed in order as long as the total object count for the request (items, variations, modifier lists, discounts, and taxes) is no more than 10,000.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::BatchUpsertCatalogObjectsRequest.new # BatchUpsertCatalogObjectsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchUpsertCatalogObjects
  result = api_instance.batch_upsert_catalog_objects(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->batch_upsert_catalog_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**BatchUpsertCatalogObjectsRequest**](BatchUpsertCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchUpsertCatalogObjectsResponse**](BatchUpsertCatalogObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **catalog_info**
> CatalogInfoResponse catalog_info(authorization)

CatalogInfo

Returns information about the Square Catalog API, such as batch size limits for `BatchUpsertCatalogObjects`.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.


begin
  #CatalogInfo
  result = api_instance.catalog_info(authorization)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->catalog_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 

### Return type

[**CatalogInfoResponse**](CatalogInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_catalog_object**
> DeleteCatalogObjectResponse delete_catalog_object(authorization, object_id)

DeleteCatalogObject

Deletes a single [CatalogObject](#type-catalogobject) based on the provided ID and returns the set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a [CatalogItem](#type-catalogitem) will also delete all of its [CatalogItemVariation](#type-catalogitemvariation) children.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

object_id = "object_id_example" # String | The ID of the [CatalogObject](#type-catalogobject) to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a [CatalogItem](#type-catalogitem) will delete its [CatalogItemVariation](#type-catalogitemvariation)s).


begin
  #DeleteCatalogObject
  result = api_instance.delete_catalog_object(authorization, object_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->delete_catalog_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **object_id** | **String**| The ID of the [CatalogObject](#type-catalogobject) to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a [CatalogItem](#type-catalogitem) will delete its [CatalogItemVariation](#type-catalogitemvariation)s). | 

### Return type

[**DeleteCatalogObjectResponse**](DeleteCatalogObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_catalog**
> ListCatalogResponse list_catalog(authorization, opts)

ListCatalog

Returns a list of [CatalogObject](#type-catalogobject)s that includes all objects of a set of desired types (for example, all [CatalogItem](#type-catalogitem) and [CatalogTax](#type-catalogtax) objects) in the catalog. The types parameter is specified as a comma-separated list of valid [CatalogObject](#type-catalogobject) types: `ITEM`, `ITEM_VARIATION`, `MODIFIER`, `MODIFIER_LIST`, `CATEGORY`, `DISCOUNT`, `TAX`.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

opts = { 
  cursor: "cursor_example", # String | The pagination cursor returned in the previous response. Leave unset for an initial request. See [Paginating results](#paginatingresults) for more information.
  types: "types_example" # String | An optional case-insensitive, comma-separated list of object types to retrieve, for example `ITEM,ITEM_VARIATION,CATEGORY`.  The legal values are taken from the [CatalogObjectType](#type-catalogobjecttype) enumeration, namely `\"ITEM\"`, `\"ITEM_VARIATION\"`, `\"CATEGORY\"`, `\"DISCOUNT\"`, `\"TAX\"`, `\"MODIFIER\"`, or `\"MODIFIER_LIST\"`.
}

begin
  #ListCatalog
  result = api_instance.list_catalog(authorization, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->list_catalog: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **cursor** | **String**| The pagination cursor returned in the previous response. Leave unset for an initial request. See [Paginating results](#paginatingresults) for more information. | [optional] 
 **types** | **String**| An optional case-insensitive, comma-separated list of object types to retrieve, for example &#x60;ITEM,ITEM_VARIATION,CATEGORY&#x60;.  The legal values are taken from the [CatalogObjectType](#type-catalogobjecttype) enumeration, namely &#x60;\&quot;ITEM\&quot;&#x60;, &#x60;\&quot;ITEM_VARIATION\&quot;&#x60;, &#x60;\&quot;CATEGORY\&quot;&#x60;, &#x60;\&quot;DISCOUNT\&quot;&#x60;, &#x60;\&quot;TAX\&quot;&#x60;, &#x60;\&quot;MODIFIER\&quot;&#x60;, or &#x60;\&quot;MODIFIER_LIST\&quot;&#x60;. | [optional] 

### Return type

[**ListCatalogResponse**](ListCatalogResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_catalog_object**
> RetrieveCatalogObjectResponse retrieve_catalog_object(authorization, object_id, opts)

RetrieveCatalogObject

Returns a single [CatalogItem](#type-catalogitem) as a [CatalogObject](#type-catalogobject) based on the provided ID. The returned object includes all of the relevant [CatalogItem](#type-catalogitem) information including: [CatalogItemVariation](#type-catalogitemvariation) children, references to its [CatalogModifierList](#type-catalogmodifierlist) objects, and the ids of any [CatalogTax](#type-catalogtax) objects that apply to it.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

object_id = "object_id_example" # String | The object ID of any type of [CatalogObject](#type-catalogobject)s to be retrieved.

opts = { 
  include_related_objects: true # BOOLEAN | If `true`, the response will include additional objects that are related to the requested object, as follows:  If the `object` field of the response contains a [CatalogItem](#type-catalogitem), its associated [CatalogCategory](#type-catalogcategory), [CatalogTax](#type-catalogtax)es, and [CatalogModifierList](#type-catalogmodifierlist)s will be returned in the `related_objects` field of the response. If the `object` field of the response contains a [CatalogItemVariation](#type-catalogitemvariation), its parent [CatalogItem](#type-catalogitem) will be returned in the `related_objects` field of the response.
}

begin
  #RetrieveCatalogObject
  result = api_instance.retrieve_catalog_object(authorization, object_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->retrieve_catalog_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **object_id** | **String**| The object ID of any type of [CatalogObject](#type-catalogobject)s to be retrieved. | 
 **include_related_objects** | **BOOLEAN**| If &#x60;true&#x60;, the response will include additional objects that are related to the requested object, as follows:  If the &#x60;object&#x60; field of the response contains a [CatalogItem](#type-catalogitem), its associated [CatalogCategory](#type-catalogcategory), [CatalogTax](#type-catalogtax)es, and [CatalogModifierList](#type-catalogmodifierlist)s will be returned in the &#x60;related_objects&#x60; field of the response. If the &#x60;object&#x60; field of the response contains a [CatalogItemVariation](#type-catalogitemvariation), its parent [CatalogItem](#type-catalogitem) will be returned in the &#x60;related_objects&#x60; field of the response. | [optional] 

### Return type

[**RetrieveCatalogObjectResponse**](RetrieveCatalogObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_catalog_objects**
> SearchCatalogObjectsResponse search_catalog_objects(authorization, body)

SearchCatalogObjects

Queries the targeted catalog using a variety of query types ([CatalogQuerySortedAttribute](#type-catalogquerysortedattribute), ([CatalogQueryExact](#type-catalogqueryexact, ([CatalogQueryRange](#type-catalogqueryrange), ([CatalogQueryText](#type-catalogquerytext), ([CatalogQueryItemsForTax](#type-catalogqueryitemsfortax), ([CatalogQueryItemsForModifierList](#type-catalogqueryitemsformodifierlist)).

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::SearchCatalogObjectsRequest.new # SearchCatalogObjectsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #SearchCatalogObjects
  result = api_instance.search_catalog_objects(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->search_catalog_objects: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**SearchCatalogObjectsRequest**](SearchCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SearchCatalogObjectsResponse**](SearchCatalogObjectsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_item_modifier_lists**
> UpdateItemModifierListsResponse update_item_modifier_lists(authorization, body)

UpdateItemModifierLists

Updates the [CatalogModifierList](#type-catalogmodifierlist) objects that apply to the targeted [CatalogItem](#type-catalogitem) without having to perform an upsert on the entire item.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::UpdateItemModifierListsRequest.new # UpdateItemModifierListsRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateItemModifierLists
  result = api_instance.update_item_modifier_lists(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->update_item_modifier_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**UpdateItemModifierListsRequest**](UpdateItemModifierListsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpdateItemModifierListsResponse**](UpdateItemModifierListsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_item_taxes**
> UpdateItemTaxesResponse update_item_taxes(authorization, body)

UpdateItemTaxes

Updates the [CatalogTax](#type-catalogtax) objects that apply to the targeted [CatalogItem](#type-catalogitem) without having to perform an upsert on the entire item.

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::UpdateItemTaxesRequest.new # UpdateItemTaxesRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateItemTaxes
  result = api_instance.update_item_taxes(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->update_item_taxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**UpdateItemTaxesRequest**](UpdateItemTaxesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpdateItemTaxesResponse**](UpdateItemTaxesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upsert_catalog_object**
> UpsertCatalogObjectResponse upsert_catalog_object(authorization, body)

UpsertCatalogObject

Creates or updates the target [CatalogObject](#type-catalogobject).

### Example
```ruby
# load the gem
require 'square_connect'

api_instance = SquareConnect::CatalogApi.new

authorization = "authorization_example" # String | The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

body = SquareConnect::UpsertCatalogObjectRequest.new # UpsertCatalogObjectRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpsertCatalogObject
  result = api_instance.upsert_catalog_object(authorization, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling CatalogApi->upsert_catalog_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**UpsertCatalogObjectRequest**](UpsertCatalogObjectRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**UpsertCatalogObjectResponse**](UpsertCatalogObjectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



