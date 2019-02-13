=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class InventoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # BatchChangeInventory
    # Applies adjustments and counts to the provided item quantities.  On success: returns the current calculated counts for all objects referenced in the request. On failure: returns a list of related errors.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [BatchChangeInventoryResponse]
    def batch_change_inventory(body, opts = {})
      data, _status_code, _headers = batch_change_inventory_with_http_info(body, opts)
      return data
    end

    # BatchChangeInventory
    # Applies adjustments and counts to the provided item quantities.  On success: returns the current calculated counts for all objects referenced in the request. On failure: returns a list of related errors.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchChangeInventoryResponse, Fixnum, Hash)>] BatchChangeInventoryResponse data, response status code and response headers
    def batch_change_inventory_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.batch_change_inventory ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling InventoryApi.batch_change_inventory" if body.nil?
      # resource path
      local_var_path = "/v2/inventory/batch-change".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-02-13"

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
        :return_type => 'BatchChangeInventoryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#batch_change_inventory\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # BatchRetrieveInventoryChanges
    # Returns historical physical counts and adjustments based on the provided filter criteria.  Results are paginated and sorted in ascending order according their `occurred_at` timestamp (oldest first).  BatchRetrieveInventoryChanges is a catch-all query endpoint for queries that cannot be handled by other, simpler endpoints.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [BatchRetrieveInventoryChangesResponse]
    def batch_retrieve_inventory_changes(body, opts = {})
      data, _status_code, _headers = batch_retrieve_inventory_changes_with_http_info(body, opts)
      return data
    end

    # BatchRetrieveInventoryChanges
    # Returns historical physical counts and adjustments based on the provided filter criteria.  Results are paginated and sorted in ascending order according their &#x60;occurred_at&#x60; timestamp (oldest first).  BatchRetrieveInventoryChanges is a catch-all query endpoint for queries that cannot be handled by other, simpler endpoints.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchRetrieveInventoryChangesResponse, Fixnum, Hash)>] BatchRetrieveInventoryChangesResponse data, response status code and response headers
    def batch_retrieve_inventory_changes_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.batch_retrieve_inventory_changes ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling InventoryApi.batch_retrieve_inventory_changes" if body.nil?
      # resource path
      local_var_path = "/v2/inventory/batch-retrieve-changes".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-02-13"

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
        :return_type => 'BatchRetrieveInventoryChangesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#batch_retrieve_inventory_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # BatchRetrieveInventoryCounts
    # Returns current counts for the provided [CatalogObject](#type-catalogobject)s at the requested [Location](#type-location)s.  Results are paginated and sorted in descending order according to their `calculated_at` timestamp (newest first).  When `updated_after` is specified, only counts that have changed since that time (based on the server timestamp for the most recent change) are returned. This allows clients to perform a \"sync\" operation, for example in response to receiving a Webhook notification.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [BatchRetrieveInventoryCountsResponse]
    def batch_retrieve_inventory_counts(body, opts = {})
      data, _status_code, _headers = batch_retrieve_inventory_counts_with_http_info(body, opts)
      return data
    end

    # BatchRetrieveInventoryCounts
    # Returns current counts for the provided [CatalogObject](#type-catalogobject)s at the requested [Location](#type-location)s.  Results are paginated and sorted in descending order according to their &#x60;calculated_at&#x60; timestamp (newest first).  When &#x60;updated_after&#x60; is specified, only counts that have changed since that time (based on the server timestamp for the most recent change) are returned. This allows clients to perform a \&quot;sync\&quot; operation, for example in response to receiving a Webhook notification.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchRetrieveInventoryCountsResponse, Fixnum, Hash)>] BatchRetrieveInventoryCountsResponse data, response status code and response headers
    def batch_retrieve_inventory_counts_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.batch_retrieve_inventory_counts ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling InventoryApi.batch_retrieve_inventory_counts" if body.nil?
      # resource path
      local_var_path = "/v2/inventory/batch-retrieve-counts".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-02-13"

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
        :return_type => 'BatchRetrieveInventoryCountsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#batch_retrieve_inventory_counts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveInventoryAdjustment
    # Returns the [InventoryAdjustment](#type-inventoryadjustment) object with the provided `adjustment_id`.
    # @param adjustment_id ID of the [InventoryAdjustment](#type-inventoryadjustment) to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [RetrieveInventoryAdjustmentResponse]
    def retrieve_inventory_adjustment(adjustment_id, opts = {})
      data, _status_code, _headers = retrieve_inventory_adjustment_with_http_info(adjustment_id, opts)
      return data
    end

    # RetrieveInventoryAdjustment
    # Returns the [InventoryAdjustment](#type-inventoryadjustment) object with the provided &#x60;adjustment_id&#x60;.
    # @param adjustment_id ID of the [InventoryAdjustment](#type-inventoryadjustment) to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetrieveInventoryAdjustmentResponse, Fixnum, Hash)>] RetrieveInventoryAdjustmentResponse data, response status code and response headers
    def retrieve_inventory_adjustment_with_http_info(adjustment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.retrieve_inventory_adjustment ..."
      end
      # verify the required parameter 'adjustment_id' is set
      fail ArgumentError, "Missing the required parameter 'adjustment_id' when calling InventoryApi.retrieve_inventory_adjustment" if adjustment_id.nil?
      # resource path
      local_var_path = "/v2/inventory/adjustment/{adjustment_id}".sub('{format}','json').sub('{' + 'adjustment_id' + '}', adjustment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-02-13"

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
        :return_type => 'RetrieveInventoryAdjustmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#retrieve_inventory_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveInventoryChanges
    # Returns a set of physical counts and inventory adjustments for the provided [CatalogObject](#type-catalogobject) at the requested [Location](#type-location)s.  Results are paginated and sorted in descending order according to their `occurred_at` timestamp (newest first).  There are no limits on how far back the caller can page. This endpoint is useful when displaying recent changes for a specific item. For more sophisticated queries, use a batch endpoint.
    # @param catalog_object_id ID of the [CatalogObject](#type-catalogobject) to retrieve.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_ids The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations.
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information.
    # @return [RetrieveInventoryChangesResponse]
    def retrieve_inventory_changes(catalog_object_id, opts = {})
      data, _status_code, _headers = retrieve_inventory_changes_with_http_info(catalog_object_id, opts)
      return data
    end

    # RetrieveInventoryChanges
    # Returns a set of physical counts and inventory adjustments for the provided [CatalogObject](#type-catalogobject) at the requested [Location](#type-location)s.  Results are paginated and sorted in descending order according to their &#x60;occurred_at&#x60; timestamp (newest first).  There are no limits on how far back the caller can page. This endpoint is useful when displaying recent changes for a specific item. For more sophisticated queries, use a batch endpoint.
    # @param catalog_object_id ID of the [CatalogObject](#type-catalogobject) to retrieve.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_ids The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations.
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information.
    # @return [Array<(RetrieveInventoryChangesResponse, Fixnum, Hash)>] RetrieveInventoryChangesResponse data, response status code and response headers
    def retrieve_inventory_changes_with_http_info(catalog_object_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.retrieve_inventory_changes ..."
      end
      # verify the required parameter 'catalog_object_id' is set
      fail ArgumentError, "Missing the required parameter 'catalog_object_id' when calling InventoryApi.retrieve_inventory_changes" if catalog_object_id.nil?
      # resource path
      local_var_path = "/v2/inventory/{catalog_object_id}/changes".sub('{format}','json').sub('{' + 'catalog_object_id' + '}', catalog_object_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'location_ids'] = opts[:'location_ids'] if !opts[:'location_ids'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-02-13"

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
        :return_type => 'RetrieveInventoryChangesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#retrieve_inventory_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveInventoryCount
    # Retrieves the current calculated stock count for a given [CatalogObject](#type-catalogobject) at a given set of [Location](#type-location)s. Responses are paginated and unsorted. For more sophisticated queries, use a batch endpoint.
    # @param catalog_object_id ID of the [CatalogObject](#type-catalogobject) to retrieve.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_ids The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations.
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information.
    # @return [RetrieveInventoryCountResponse]
    def retrieve_inventory_count(catalog_object_id, opts = {})
      data, _status_code, _headers = retrieve_inventory_count_with_http_info(catalog_object_id, opts)
      return data
    end

    # RetrieveInventoryCount
    # Retrieves the current calculated stock count for a given [CatalogObject](#type-catalogobject) at a given set of [Location](#type-location)s. Responses are paginated and unsorted. For more sophisticated queries, use a batch endpoint.
    # @param catalog_object_id ID of the [CatalogObject](#type-catalogobject) to retrieve.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_ids The [Location](#type-location) IDs to look up as a comma-separated list. An empty list queries all locations.
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See [Paginating results](#paginatingresults) for more information.
    # @return [Array<(RetrieveInventoryCountResponse, Fixnum, Hash)>] RetrieveInventoryCountResponse data, response status code and response headers
    def retrieve_inventory_count_with_http_info(catalog_object_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.retrieve_inventory_count ..."
      end
      # verify the required parameter 'catalog_object_id' is set
      fail ArgumentError, "Missing the required parameter 'catalog_object_id' when calling InventoryApi.retrieve_inventory_count" if catalog_object_id.nil?
      # resource path
      local_var_path = "/v2/inventory/{catalog_object_id}".sub('{format}','json').sub('{' + 'catalog_object_id' + '}', catalog_object_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'location_ids'] = opts[:'location_ids'] if !opts[:'location_ids'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-02-13"

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
        :return_type => 'RetrieveInventoryCountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#retrieve_inventory_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveInventoryPhysicalCount
    # Returns the [InventoryPhysicalCount](#type-inventoryphysicalcount) object with the provided `physical_count_id`.
    # @param physical_count_id ID of the [InventoryPhysicalCount](#type-inventoryphysicalcount) to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [RetrieveInventoryPhysicalCountResponse]
    def retrieve_inventory_physical_count(physical_count_id, opts = {})
      data, _status_code, _headers = retrieve_inventory_physical_count_with_http_info(physical_count_id, opts)
      return data
    end

    # RetrieveInventoryPhysicalCount
    # Returns the [InventoryPhysicalCount](#type-inventoryphysicalcount) object with the provided &#x60;physical_count_id&#x60;.
    # @param physical_count_id ID of the [InventoryPhysicalCount](#type-inventoryphysicalcount) to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetrieveInventoryPhysicalCountResponse, Fixnum, Hash)>] RetrieveInventoryPhysicalCountResponse data, response status code and response headers
    def retrieve_inventory_physical_count_with_http_info(physical_count_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InventoryApi.retrieve_inventory_physical_count ..."
      end
      # verify the required parameter 'physical_count_id' is set
      fail ArgumentError, "Missing the required parameter 'physical_count_id' when calling InventoryApi.retrieve_inventory_physical_count" if physical_count_id.nil?
      # resource path
      local_var_path = "/v2/inventory/physical-count/{physical_count_id}".sub('{format}','json').sub('{' + 'physical_count_id' + '}', physical_count_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-02-13"

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
        :return_type => 'RetrieveInventoryPhysicalCountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryApi#retrieve_inventory_physical_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
