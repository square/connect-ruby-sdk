=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class CheckoutApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # CreateCheckout
    # Links a `checkoutId` to a `checkout_page_url` that customers will be directed to in order to provide their payment information using a payment processing workflow hosted on connect.squareup.com.
    # @param location_id The ID of the business location to associate the checkout with.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateCheckoutResponse]
    def create_checkout(location_id, body, opts = {})
      data, _status_code, _headers = create_checkout_with_http_info(location_id, body, opts)
      return data
    end

    # CreateCheckout
    # Links a &#x60;checkoutId&#x60; to a &#x60;checkout_page_url&#x60; that customers will be directed to in order to provide their payment information using a payment processing workflow hosted on connect.squareup.com.
    # @param location_id The ID of the business location to associate the checkout with.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCheckoutResponse, Fixnum, Hash)>] CreateCheckoutResponse data, response status code and response headers
    def create_checkout_with_http_info(location_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CheckoutApi.create_checkout ..."
      end
      # verify the required parameter 'location_id' is set
      fail ArgumentError, "Missing the required parameter 'location_id' when calling CheckoutApi.create_checkout" if location_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CheckoutApi.create_checkout" if body.nil?
      # resource path
      local_var_path = "/v2/locations/{location_id}/checkouts".sub('{format}','json').sub('{' + 'location_id' + '}', location_id.to_s)

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
        :return_type => 'CreateCheckoutResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutApi#create_checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
