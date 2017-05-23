# SquareConnect::BatchUpsertCatalogObjectsResponse

### Description



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | The set of [Error](#type-error)s encountered. | [optional] 
**objects** | [**Array&lt;CatalogObject&gt;**](CatalogObject.md) | The created [CatalogObject](#type-catalogobject)s | [optional] 
**updated_at** | **String** | The database [timestamp](#workingwithdates) of this update in RFC 3339 format, e.g., \&quot;2016-09-04T23:59:33.123Z\&quot;. | [optional] 
**id_mappings** | [**Array&lt;CatalogIdMapping&gt;**](CatalogIdMapping.md) | The mapping between client and server IDs for this Upsert. | [optional] 


