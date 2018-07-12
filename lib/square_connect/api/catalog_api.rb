=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class CatalogApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # BatchDeleteCatalogObjects
    # Deletes a set of [CatalogItem](#type-catalogitem)s based on the provided list of target IDs and returns a set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a CatalogItem will also delete all of its [CatalogItemVariation](#type-catalogitemvariation) children.  `BatchDeleteCatalogObjects` succeeds even if only a portion of the targeted IDs can be deleted. The response will only include IDs that were actually deleted.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [BatchDeleteCatalogObjectsResponse]
    def batch_delete_catalog_objects(body, opts = {})
      data, _status_code, _headers = batch_delete_catalog_objects_with_http_info(body, opts)
      return data
    end

    # BatchDeleteCatalogObjects
    # Deletes a set of [CatalogItem](#type-catalogitem)s based on the provided list of target IDs and returns a set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a CatalogItem will also delete all of its [CatalogItemVariation](#type-catalogitemvariation) children.  &#x60;BatchDeleteCatalogObjects&#x60; succeeds even if only a portion of the targeted IDs can be deleted. The response will only include IDs that were actually deleted.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchDeleteCatalogObjectsResponse, Fixnum, Hash)>] BatchDeleteCatalogObjectsResponse data, response status code and response headers
    def batch_delete_catalog_objects_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.batch_delete_catalog_objects ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CatalogApi.batch_delete_catalog_objects" if body.nil?
      # resource path
      local_var_path = "/v2/catalog/batch-delete".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BatchDeleteCatalogObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#batch_delete_catalog_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # BatchRetrieveCatalogObjects
    # Returns a set of objects based on the provided ID. Each [CatalogItem](#type-catalogitem) returned in the set includes all of its child information including: all of its [CatalogItemVariation](#type-catalogitemvariation) objects, references to its [CatalogModifierList](#type-catalogmodifierlist) objects, and the ids of any [CatalogTax](#type-catalogtax) objects that apply to it.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [BatchRetrieveCatalogObjectsResponse]
    def batch_retrieve_catalog_objects(body, opts = {})
      data, _status_code, _headers = batch_retrieve_catalog_objects_with_http_info(body, opts)
      return data
    end

    # BatchRetrieveCatalogObjects
    # Returns a set of objects based on the provided ID. Each [CatalogItem](#type-catalogitem) returned in the set includes all of its child information including: all of its [CatalogItemVariation](#type-catalogitemvariation) objects, references to its [CatalogModifierList](#type-catalogmodifierlist) objects, and the ids of any [CatalogTax](#type-catalogtax) objects that apply to it.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchRetrieveCatalogObjectsResponse, Fixnum, Hash)>] BatchRetrieveCatalogObjectsResponse data, response status code and response headers
    def batch_retrieve_catalog_objects_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.batch_retrieve_catalog_objects ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CatalogApi.batch_retrieve_catalog_objects" if body.nil?
      # resource path
      local_var_path = "/v2/catalog/batch-retrieve".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BatchRetrieveCatalogObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#batch_retrieve_catalog_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # BatchUpsertCatalogObjects
    # Creates or updates up to 10,000 target objects based on the provided list of objects. The target objects are grouped into batches and each batch is inserted/updated in an all-or-nothing manner. If an object within a batch is malformed in some way, or violates a database constraint, the entire batch containing that item will be disregarded. However, other batches in the same request may still succeed. Each batch may contain up to 1,000 objects, and batches will be processed in order as long as the total object count for the request (items, variations, modifier lists, discounts, and taxes) is no more than 10,000.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [BatchUpsertCatalogObjectsResponse]
    def batch_upsert_catalog_objects(body, opts = {})
      data, _status_code, _headers = batch_upsert_catalog_objects_with_http_info(body, opts)
      return data
    end

    # BatchUpsertCatalogObjects
    # Creates or updates up to 10,000 target objects based on the provided list of objects. The target objects are grouped into batches and each batch is inserted/updated in an all-or-nothing manner. If an object within a batch is malformed in some way, or violates a database constraint, the entire batch containing that item will be disregarded. However, other batches in the same request may still succeed. Each batch may contain up to 1,000 objects, and batches will be processed in order as long as the total object count for the request (items, variations, modifier lists, discounts, and taxes) is no more than 10,000.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchUpsertCatalogObjectsResponse, Fixnum, Hash)>] BatchUpsertCatalogObjectsResponse data, response status code and response headers
    def batch_upsert_catalog_objects_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.batch_upsert_catalog_objects ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CatalogApi.batch_upsert_catalog_objects" if body.nil?
      # resource path
      local_var_path = "/v2/catalog/batch-upsert".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BatchUpsertCatalogObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#batch_upsert_catalog_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CatalogInfo
    # Returns information about the Square Catalog API, such as batch size limits for `BatchUpsertCatalogObjects`.
    # @param [Hash] opts the optional parameters
    # @return [CatalogInfoResponse]
    def catalog_info(opts = {})
      data, _status_code, _headers = catalog_info_with_http_info(opts)
      return data
    end

    # CatalogInfo
    # Returns information about the Square Catalog API, such as batch size limits for &#x60;BatchUpsertCatalogObjects&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogInfoResponse, Fixnum, Hash)>] CatalogInfoResponse data, response status code and response headers
    def catalog_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.catalog_info ..."
      end
      # resource path
      local_var_path = "/v2/catalog/info".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CatalogInfoResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#catalog_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DeleteCatalogObject
    # Deletes a single [CatalogObject](#type-catalogobject) based on the provided ID and returns the set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a [CatalogItem](#type-catalogitem) will also delete all of its [CatalogItemVariation](#type-catalogitemvariation) children.
    # @param object_id The ID of the [CatalogObject](#type-catalogobject) to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a [CatalogItem](#type-catalogitem) will delete its [CatalogItemVariation](#type-catalogitemvariation)s).
    # @param [Hash] opts the optional parameters
    # @return [DeleteCatalogObjectResponse]
    def delete_catalog_object(object_id, opts = {})
      data, _status_code, _headers = delete_catalog_object_with_http_info(object_id, opts)
      return data
    end

    # DeleteCatalogObject
    # Deletes a single [CatalogObject](#type-catalogobject) based on the provided ID and returns the set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a [CatalogItem](#type-catalogitem) will also delete all of its [CatalogItemVariation](#type-catalogitemvariation) children.
    # @param object_id The ID of the [CatalogObject](#type-catalogobject) to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a [CatalogItem](#type-catalogitem) will delete its [CatalogItemVariation](#type-catalogitemvariation)s).
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCatalogObjectResponse, Fixnum, Hash)>] DeleteCatalogObjectResponse data, response status code and response headers
    def delete_catalog_object_with_http_info(object_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.delete_catalog_object ..."
      end
      # verify the required parameter 'object_id' is set
      fail ArgumentError, "Missing the required parameter 'object_id' when calling CatalogApi.delete_catalog_object" if object_id.nil?
      # resource path
      local_var_path = "/v2/catalog/object/{object_id}".sub('{format}','json').sub('{' + 'object_id' + '}', object_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeleteCatalogObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#delete_catalog_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListCatalog
    # Returns a list of [CatalogObject](#type-catalogobject)s that includes all objects of a set of desired types (for example, all [CatalogItem](#type-catalogitem) and [CatalogTax](#type-catalogtax) objects) in the catalog. The types parameter is specified as a comma-separated list of valid [CatalogObject](#type-catalogobject) types: `ITEM`, `ITEM_VARIATION`, `MODIFIER`, `MODIFIER_LIST`, `CATEGORY`, `DISCOUNT`, `TAX`.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor returned in the previous response. Leave unset for an initial request. See [Paginating results](#paginatingresults) for more information.
    # @option opts [String] :types An optional case-insensitive, comma-separated list of object types to retrieve, for example &#x60;ITEM,ITEM_VARIATION,CATEGORY&#x60;.  The legal values are taken from the [CatalogObjectType](#type-catalogobjecttype) enumeration, namely &#x60;\&quot;ITEM\&quot;&#x60;, &#x60;\&quot;ITEM_VARIATION\&quot;&#x60;, &#x60;\&quot;CATEGORY\&quot;&#x60;, &#x60;\&quot;DISCOUNT\&quot;&#x60;, &#x60;\&quot;TAX\&quot;&#x60;, &#x60;\&quot;MODIFIER\&quot;&#x60;, or &#x60;\&quot;MODIFIER_LIST\&quot;&#x60;.
    # @return [ListCatalogResponse]
    def list_catalog(opts = {})
      data, _status_code, _headers = list_catalog_with_http_info(opts)
      return data
    end

    # ListCatalog
    # Returns a list of [CatalogObject](#type-catalogobject)s that includes all objects of a set of desired types (for example, all [CatalogItem](#type-catalogitem) and [CatalogTax](#type-catalogtax) objects) in the catalog. The types parameter is specified as a comma-separated list of valid [CatalogObject](#type-catalogobject) types: &#x60;ITEM&#x60;, &#x60;ITEM_VARIATION&#x60;, &#x60;MODIFIER&#x60;, &#x60;MODIFIER_LIST&#x60;, &#x60;CATEGORY&#x60;, &#x60;DISCOUNT&#x60;, &#x60;TAX&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor returned in the previous response. Leave unset for an initial request. See [Paginating results](#paginatingresults) for more information.
    # @option opts [String] :types An optional case-insensitive, comma-separated list of object types to retrieve, for example &#x60;ITEM,ITEM_VARIATION,CATEGORY&#x60;.  The legal values are taken from the [CatalogObjectType](#type-catalogobjecttype) enumeration, namely &#x60;\&quot;ITEM\&quot;&#x60;, &#x60;\&quot;ITEM_VARIATION\&quot;&#x60;, &#x60;\&quot;CATEGORY\&quot;&#x60;, &#x60;\&quot;DISCOUNT\&quot;&#x60;, &#x60;\&quot;TAX\&quot;&#x60;, &#x60;\&quot;MODIFIER\&quot;&#x60;, or &#x60;\&quot;MODIFIER_LIST\&quot;&#x60;.
    # @return [Array<(ListCatalogResponse, Fixnum, Hash)>] ListCatalogResponse data, response status code and response headers
    def list_catalog_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.list_catalog ..."
      end
      # resource path
      local_var_path = "/v2/catalog/list".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'types'] = opts[:'types'] if !opts[:'types'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListCatalogResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#list_catalog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveCatalogObject
    # Returns a single [CatalogItem](#type-catalogitem) as a [CatalogObject](#type-catalogobject) based on the provided ID. The returned object includes all of the relevant [CatalogItem](#type-catalogitem) information including: [CatalogItemVariation](#type-catalogitemvariation) children, references to its [CatalogModifierList](#type-catalogmodifierlist) objects, and the ids of any [CatalogTax](#type-catalogtax) objects that apply to it.
    # @param object_id The object ID of any type of [CatalogObject](#type-catalogobject)s to be retrieved.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_related_objects If &#x60;true&#x60;, the response will include additional objects that are related to the requested object, as follows:  If the &#x60;object&#x60; field of the response contains a [CatalogItem](#type-catalogitem), its associated [CatalogCategory](#type-catalogcategory), [CatalogTax](#type-catalogtax)es, and [CatalogModifierList](#type-catalogmodifierlist)s will be returned in the &#x60;related_objects&#x60; field of the response. If the &#x60;object&#x60; field of the response contains a [CatalogItemVariation](#type-catalogitemvariation), its parent [CatalogItem](#type-catalogitem) will be returned in the &#x60;related_objects&#x60; field of the response.  Default value: &#x60;false&#x60;
    # @return [RetrieveCatalogObjectResponse]
    def retrieve_catalog_object(object_id, opts = {})
      data, _status_code, _headers = retrieve_catalog_object_with_http_info(object_id, opts)
      return data
    end

    # RetrieveCatalogObject
    # Returns a single [CatalogItem](#type-catalogitem) as a [CatalogObject](#type-catalogobject) based on the provided ID. The returned object includes all of the relevant [CatalogItem](#type-catalogitem) information including: [CatalogItemVariation](#type-catalogitemvariation) children, references to its [CatalogModifierList](#type-catalogmodifierlist) objects, and the ids of any [CatalogTax](#type-catalogtax) objects that apply to it.
    # @param object_id The object ID of any type of [CatalogObject](#type-catalogobject)s to be retrieved.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_related_objects If &#x60;true&#x60;, the response will include additional objects that are related to the requested object, as follows:  If the &#x60;object&#x60; field of the response contains a [CatalogItem](#type-catalogitem), its associated [CatalogCategory](#type-catalogcategory), [CatalogTax](#type-catalogtax)es, and [CatalogModifierList](#type-catalogmodifierlist)s will be returned in the &#x60;related_objects&#x60; field of the response. If the &#x60;object&#x60; field of the response contains a [CatalogItemVariation](#type-catalogitemvariation), its parent [CatalogItem](#type-catalogitem) will be returned in the &#x60;related_objects&#x60; field of the response.  Default value: &#x60;false&#x60;
    # @return [Array<(RetrieveCatalogObjectResponse, Fixnum, Hash)>] RetrieveCatalogObjectResponse data, response status code and response headers
    def retrieve_catalog_object_with_http_info(object_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.retrieve_catalog_object ..."
      end
      # verify the required parameter 'object_id' is set
      fail ArgumentError, "Missing the required parameter 'object_id' when calling CatalogApi.retrieve_catalog_object" if object_id.nil?
      # resource path
      local_var_path = "/v2/catalog/object/{object_id}".sub('{format}','json').sub('{' + 'object_id' + '}', object_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include_related_objects'] = opts[:'include_related_objects'] if !opts[:'include_related_objects'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RetrieveCatalogObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#retrieve_catalog_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # SearchCatalogObjects
    # Queries the targeted catalog using a variety of query types: [CatalogQuerySortedAttribute](#type-catalogquerysortedattribute), [CatalogQueryExact](#type-catalogqueryexact), [CatalogQueryRange](#type-catalogqueryrange), [CatalogQueryText](#type-catalogquerytext), [CatalogQueryItemsForTax](#type-catalogqueryitemsfortax), and [CatalogQueryItemsForModifierList](#type-catalogqueryitemsformodifierlist).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [SearchCatalogObjectsResponse]
    def search_catalog_objects(body, opts = {})
      data, _status_code, _headers = search_catalog_objects_with_http_info(body, opts)
      return data
    end

    # SearchCatalogObjects
    # Queries the targeted catalog using a variety of query types: [CatalogQuerySortedAttribute](#type-catalogquerysortedattribute), [CatalogQueryExact](#type-catalogqueryexact), [CatalogQueryRange](#type-catalogqueryrange), [CatalogQueryText](#type-catalogquerytext), [CatalogQueryItemsForTax](#type-catalogqueryitemsfortax), and [CatalogQueryItemsForModifierList](#type-catalogqueryitemsformodifierlist).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchCatalogObjectsResponse, Fixnum, Hash)>] SearchCatalogObjectsResponse data, response status code and response headers
    def search_catalog_objects_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.search_catalog_objects ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CatalogApi.search_catalog_objects" if body.nil?
      # resource path
      local_var_path = "/v2/catalog/search".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SearchCatalogObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#search_catalog_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateItemModifierLists
    # Updates the [CatalogModifierList](#type-catalogmodifierlist) objects that apply to the targeted [CatalogItem](#type-catalogitem) without having to perform an upsert on the entire item.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpdateItemModifierListsResponse]
    def update_item_modifier_lists(body, opts = {})
      data, _status_code, _headers = update_item_modifier_lists_with_http_info(body, opts)
      return data
    end

    # UpdateItemModifierLists
    # Updates the [CatalogModifierList](#type-catalogmodifierlist) objects that apply to the targeted [CatalogItem](#type-catalogitem) without having to perform an upsert on the entire item.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateItemModifierListsResponse, Fixnum, Hash)>] UpdateItemModifierListsResponse data, response status code and response headers
    def update_item_modifier_lists_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.update_item_modifier_lists ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CatalogApi.update_item_modifier_lists" if body.nil?
      # resource path
      local_var_path = "/v2/catalog/update-item-modifier-lists".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateItemModifierListsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#update_item_modifier_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateItemTaxes
    # Updates the [CatalogTax](#type-catalogtax) objects that apply to the targeted [CatalogItem](#type-catalogitem) without having to perform an upsert on the entire item.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpdateItemTaxesResponse]
    def update_item_taxes(body, opts = {})
      data, _status_code, _headers = update_item_taxes_with_http_info(body, opts)
      return data
    end

    # UpdateItemTaxes
    # Updates the [CatalogTax](#type-catalogtax) objects that apply to the targeted [CatalogItem](#type-catalogitem) without having to perform an upsert on the entire item.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateItemTaxesResponse, Fixnum, Hash)>] UpdateItemTaxesResponse data, response status code and response headers
    def update_item_taxes_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.update_item_taxes ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CatalogApi.update_item_taxes" if body.nil?
      # resource path
      local_var_path = "/v2/catalog/update-item-taxes".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateItemTaxesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#update_item_taxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpsertCatalogObject
    # Creates or updates the target [CatalogObject](#type-catalogobject).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpsertCatalogObjectResponse]
    def upsert_catalog_object(body, opts = {})
      data, _status_code, _headers = upsert_catalog_object_with_http_info(body, opts)
      return data
    end

    # UpsertCatalogObject
    # Creates or updates the target [CatalogObject](#type-catalogobject).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpsertCatalogObjectResponse, Fixnum, Hash)>] UpsertCatalogObjectResponse data, response status code and response headers
    def upsert_catalog_object_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CatalogApi.upsert_catalog_object ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CatalogApi.upsert_catalog_object" if body.nil?
      # resource path
      local_var_path = "/v2/catalog/object".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2018-07-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpsertCatalogObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#upsert_catalog_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
