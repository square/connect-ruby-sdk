=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class CustomersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # CreateCustomer
    # Creates a new customer for a business, which can have associated cards on file.  You must provide __at least one__ of the following values in your request to this endpoint:  - `given_name` - `family_name` - `company_name` - `email_address` - `phone_number`
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateCustomerResponse]
    def create_customer(body, opts = {})
      data, _status_code, _headers = create_customer_with_http_info(body, opts)
      return data
    end

    # CreateCustomer
    # Creates a new customer for a business, which can have associated cards on file.  You must provide __at least one__ of the following values in your request to this endpoint:  - &#x60;given_name&#x60; - &#x60;family_name&#x60; - &#x60;company_name&#x60; - &#x60;email_address&#x60; - &#x60;phone_number&#x60;
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCustomerResponse, Fixnum, Hash)>] CreateCustomerResponse data, response status code and response headers
    def create_customer_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.create_customer ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CustomersApi.create_customer" if body.nil?
      # resource path
      local_var_path = "/v2/customers".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

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
        :return_type => 'CreateCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#create_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CreateCustomerCard
    # Adds a card on file to an existing customer.  As with charges, calls to `CreateCustomerCard` are idempotent. Multiple calls with the same card nonce return the same card record that was created with the provided nonce during the _first_ call.
    # @param customer_id The ID of the customer to link the card on file to.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateCustomerCardResponse]
    def create_customer_card(customer_id, body, opts = {})
      data, _status_code, _headers = create_customer_card_with_http_info(customer_id, body, opts)
      return data
    end

    # CreateCustomerCard
    # Adds a card on file to an existing customer.  As with charges, calls to &#x60;CreateCustomerCard&#x60; are idempotent. Multiple calls with the same card nonce return the same card record that was created with the provided nonce during the _first_ call.
    # @param customer_id The ID of the customer to link the card on file to.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCustomerCardResponse, Fixnum, Hash)>] CreateCustomerCardResponse data, response status code and response headers
    def create_customer_card_with_http_info(customer_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.create_customer_card ..."
      end
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomersApi.create_customer_card" if customer_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CustomersApi.create_customer_card" if body.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}/cards".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

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
        :return_type => 'CreateCustomerCardResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#create_customer_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DeleteCustomer
    # Deletes a customer from a business, along with any linked cards on file. When two profiles are merged into a single profile, that profile is assigned a new `customer_id`. You must use the new `customer_id` to delete merged profiles.
    # @param customer_id The ID of the customer to delete.
    # @param [Hash] opts the optional parameters
    # @return [DeleteCustomerResponse]
    def delete_customer(customer_id, opts = {})
      data, _status_code, _headers = delete_customer_with_http_info(customer_id, opts)
      return data
    end

    # DeleteCustomer
    # Deletes a customer from a business, along with any linked cards on file. When two profiles are merged into a single profile, that profile is assigned a new &#x60;customer_id&#x60;. You must use the new &#x60;customer_id&#x60; to delete merged profiles.
    # @param customer_id The ID of the customer to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCustomerResponse, Fixnum, Hash)>] DeleteCustomerResponse data, response status code and response headers
    def delete_customer_with_http_info(customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.delete_customer ..."
      end
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomersApi.delete_customer" if customer_id.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

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
        :return_type => 'DeleteCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#delete_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DeleteCustomerCard
    # Removes a card on file from a customer.
    # @param customer_id The ID of the customer that the card on file belongs to.
    # @param card_id The ID of the card on file to delete.
    # @param [Hash] opts the optional parameters
    # @return [DeleteCustomerCardResponse]
    def delete_customer_card(customer_id, card_id, opts = {})
      data, _status_code, _headers = delete_customer_card_with_http_info(customer_id, card_id, opts)
      return data
    end

    # DeleteCustomerCard
    # Removes a card on file from a customer.
    # @param customer_id The ID of the customer that the card on file belongs to.
    # @param card_id The ID of the card on file to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCustomerCardResponse, Fixnum, Hash)>] DeleteCustomerCardResponse data, response status code and response headers
    def delete_customer_card_with_http_info(customer_id, card_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.delete_customer_card ..."
      end
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomersApi.delete_customer_card" if customer_id.nil?
      # verify the required parameter 'card_id' is set
      fail ArgumentError, "Missing the required parameter 'card_id' when calling CustomersApi.delete_customer_card" if card_id.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}/cards/{card_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s).sub('{' + 'card_id' + '}', card_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

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
        :return_type => 'DeleteCustomerCardResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#delete_customer_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListCustomers
    # Lists a business's customers.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Pagination](/basics/api101/pagination) for more information.
    # @option opts [String] :sort_field Indicates how Customers should be sorted. Default: &#x60;DEFAULT&#x60;. See [CustomerSortField](#type-customersortfield) for possible values.
    # @option opts [String] :sort_order Indicates whether Customers should be sorted in ascending (&#x60;ASC&#x60;) or descending (&#x60;DESC&#x60;) order. Default: &#x60;ASC&#x60;. See [SortOrder](#type-sortorder) for possible values.
    # @return [ListCustomersResponse]
    def list_customers(opts = {})
      data, _status_code, _headers = list_customers_with_http_info(opts)
      return data
    end

    # ListCustomers
    # Lists a business&#39;s customers.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Pagination](/basics/api101/pagination) for more information.
    # @option opts [String] :sort_field Indicates how Customers should be sorted. Default: &#x60;DEFAULT&#x60;. See [CustomerSortField](#type-customersortfield) for possible values.
    # @option opts [String] :sort_order Indicates whether Customers should be sorted in ascending (&#x60;ASC&#x60;) or descending (&#x60;DESC&#x60;) order. Default: &#x60;ASC&#x60;. See [SortOrder](#type-sortorder) for possible values.
    # @return [Array<(ListCustomersResponse, Fixnum, Hash)>] ListCustomersResponse data, response status code and response headers
    def list_customers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.list_customers ..."
      end
      if opts[:'sort_field'] && !['DEFAULT', 'CREATED_AT'].include?(opts[:'sort_field'])
        fail ArgumentError, 'invalid value for "sort_field", must be one of DEFAULT, CREATED_AT'
      end
      if opts[:'sort_order'] && !['DESC', 'ASC'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of DESC, ASC'
      end
      # resource path
      local_var_path = "/v2/customers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'sort_field'] = opts[:'sort_field'] if !opts[:'sort_field'].nil?
      query_params[:'sort_order'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

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
        :return_type => 'ListCustomersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#list_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveCustomer
    # Returns details for a single customer.
    # @param customer_id The ID of the customer to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [RetrieveCustomerResponse]
    def retrieve_customer(customer_id, opts = {})
      data, _status_code, _headers = retrieve_customer_with_http_info(customer_id, opts)
      return data
    end

    # RetrieveCustomer
    # Returns details for a single customer.
    # @param customer_id The ID of the customer to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetrieveCustomerResponse, Fixnum, Hash)>] RetrieveCustomerResponse data, response status code and response headers
    def retrieve_customer_with_http_info(customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.retrieve_customer ..."
      end
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomersApi.retrieve_customer" if customer_id.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

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
        :return_type => 'RetrieveCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#retrieve_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # SearchCustomers
    # Searches the customer profiles associated with a Square account. Calling SearchCustomers without an explicit query parameter returns all customer profiles ordered alphabetically based on `given_name` and `family_name`.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [SearchCustomersResponse]
    def search_customers(body, opts = {})
      data, _status_code, _headers = search_customers_with_http_info(body, opts)
      return data
    end

    # SearchCustomers
    # Searches the customer profiles associated with a Square account. Calling SearchCustomers without an explicit query parameter returns all customer profiles ordered alphabetically based on &#x60;given_name&#x60; and &#x60;family_name&#x60;.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchCustomersResponse, Fixnum, Hash)>] SearchCustomersResponse data, response status code and response headers
    def search_customers_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.search_customers ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CustomersApi.search_customers" if body.nil?
      # resource path
      local_var_path = "/v2/customers/search".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

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
        :return_type => 'SearchCustomersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#search_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateCustomer
    # Updates the details of an existing customer. When two profiles are merged into a single profile, that profile is assigned a new `customer_id`. You must use the new `customer_id` to update merged profiles.  You cannot edit a customer's cards on file with this endpoint. To make changes to a card on file, you must delete the existing card on file with the [DeleteCustomerCard](#endpoint-deletecustomercard) endpoint, then create a new one with the [CreateCustomerCard](#endpoint-createcustomercard) endpoint.
    # @param customer_id The ID of the customer to update.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpdateCustomerResponse]
    def update_customer(customer_id, body, opts = {})
      data, _status_code, _headers = update_customer_with_http_info(customer_id, body, opts)
      return data
    end

    # UpdateCustomer
    # Updates the details of an existing customer. When two profiles are merged into a single profile, that profile is assigned a new &#x60;customer_id&#x60;. You must use the new &#x60;customer_id&#x60; to update merged profiles.  You cannot edit a customer&#39;s cards on file with this endpoint. To make changes to a card on file, you must delete the existing card on file with the [DeleteCustomerCard](#endpoint-deletecustomercard) endpoint, then create a new one with the [CreateCustomerCard](#endpoint-createcustomercard) endpoint.
    # @param customer_id The ID of the customer to update.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateCustomerResponse, Fixnum, Hash)>] UpdateCustomerResponse data, response status code and response headers
    def update_customer_with_http_info(customer_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomersApi.update_customer ..."
      end
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomersApi.update_customer" if customer_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CustomersApi.update_customer" if body.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-13"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersApi#update_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
