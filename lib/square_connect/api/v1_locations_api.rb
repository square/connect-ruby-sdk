=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class V1LocationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # ListLocations
    # Provides details for a business's locations, including their IDs.
    # @param [Hash] opts the optional parameters
    # @return [Array<V1Merchant>]
    def list_locations(opts = {})
      data, _status_code, _headers = list_locations_with_http_info(opts)
      return data
    end

    # ListLocations
    # Provides details for a business&#39;s locations, including their IDs.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<V1Merchant>, Fixnum, Hash)>] Array<V1Merchant> data, response status code and response headers
    def list_locations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: V1LocationsApi.list_locations ..."
      end
      # resource path
      local_var_path = "/v1/me/locations".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-27"

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
        :return_type => 'Array<V1Merchant>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V1LocationsApi#list_locations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveBusiness
    # Get a business's information.
    # @param [Hash] opts the optional parameters
    # @return [V1Merchant]
    def retrieve_business(opts = {})
      data, _status_code, _headers = retrieve_business_with_http_info(opts)
      return data
    end

    # RetrieveBusiness
    # Get a business&#39;s information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1Merchant, Fixnum, Hash)>] V1Merchant data, response status code and response headers
    def retrieve_business_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: V1LocationsApi.retrieve_business ..."
      end
      # resource path
      local_var_path = "/v1/me".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-03-27"

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
        :return_type => 'V1Merchant')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V1LocationsApi#retrieve_business\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
