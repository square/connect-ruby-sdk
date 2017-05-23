# SquareConnect::UpdateItemTaxesRequest

### Description



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**item_ids** | **Array&lt;String&gt;** | The [CatalogItem](#type-catalogitem)s whose enabled/disabled [CatalogTax](#type-catalogtax)es are being updated. | 
**taxes_to_enable** | **Array&lt;String&gt;** | The set of [CatalogTax](#type-catalogtax)es (referenced by ID) to enable for the [CatalogItem](#type-catalogitem). | [optional] 
**taxes_to_disable** | **Array&lt;String&gt;** | The set of [CatalogTax](#type-catalogtax)es (referenced by ID) to disable for the [CatalogItem](#type-catalogitem). | [optional] 


