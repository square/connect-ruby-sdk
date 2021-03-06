=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class OAuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # ObtainToken
    # Returns an OAuth access token.   The endpoint supports distinct methods of obtaining OAuth access tokens.  Applications specify a method by adding the `grant_type` parameter  in the request and also provide relevant information.  For more information, see [OAuth access token management](/authz/oauth/how-it-works#oauth-access-token-management).   __Note:__ Regardless of the method application specified, the endpoint always returns two items; an OAuth access token and  a refresh token in the response.   __OAuth tokens should only live on secure servers. Application clients should never interact directly with OAuth tokens__.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [ObtainTokenResponse]
    def obtain_token(body, opts = {})
      data, _status_code, _headers = obtain_token_with_http_info(body, opts)
      return data
    end

    # ObtainToken
    # Returns an OAuth access token.   The endpoint supports distinct methods of obtaining OAuth access tokens.  Applications specify a method by adding the &#x60;grant_type&#x60; parameter  in the request and also provide relevant information.  For more information, see [OAuth access token management](/authz/oauth/how-it-works#oauth-access-token-management).   __Note:__ Regardless of the method application specified, the endpoint always returns two items; an OAuth access token and  a refresh token in the response.   __OAuth tokens should only live on secure servers. Application clients should never interact directly with OAuth tokens__.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObtainTokenResponse, Fixnum, Hash)>] ObtainTokenResponse data, response status code and response headers
    def obtain_token_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OAuthApi.obtain_token ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling OAuthApi.obtain_token" if body.nil?
      # resource path
      local_var_path = "/oauth2/token".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-06-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ObtainTokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuthApi#obtain_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RenewToken
    # `RenewToken` is deprecated. For information about refreshing OAuth access tokens, see  [Renew OAuth Token](https://developer.squareup.com/docs/oauth-api/cookbook/renew-oauth-tokens).   Renews an OAuth access token before it expires.  OAuth access tokens besides your application's personal access token expire after __30 days__. You can also renew expired tokens within __15 days__ of their expiration. You cannot renew an access token that has been expired for more than 15 days. Instead, the associated user must re-complete the OAuth flow from the beginning.  __Important:__ The `Authorization` header for this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with the application secret on the Credentials page in the [application dashboard](https://connect.squareup.com/apps).
    # @param client_id Your application&#39;s ID, available from the [application dashboard](https://connect.squareup.com/apps).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [RenewTokenResponse]
    def renew_token(client_id, body, opts = {})
      data, _status_code, _headers = renew_token_with_http_info(client_id, body, opts)
      return data
    end

    # RenewToken
    # &#x60;RenewToken&#x60; is deprecated. For information about refreshing OAuth access tokens, see  [Renew OAuth Token](https://developer.squareup.com/docs/oauth-api/cookbook/renew-oauth-tokens).   Renews an OAuth access token before it expires.  OAuth access tokens besides your application&#39;s personal access token expire after __30 days__. You can also renew expired tokens within __15 days__ of their expiration. You cannot renew an access token that has been expired for more than 15 days. Instead, the associated user must re-complete the OAuth flow from the beginning.  __Important:__ The &#x60;Authorization&#x60; header for this endpoint must have the following format:  &#x60;&#x60;&#x60; Authorization: Client APPLICATION_SECRET &#x60;&#x60;&#x60;  Replace &#x60;APPLICATION_SECRET&#x60; with the application secret on the Credentials page in the [application dashboard](https://connect.squareup.com/apps).
    # @param client_id Your application&#39;s ID, available from the [application dashboard](https://connect.squareup.com/apps).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenewTokenResponse, Fixnum, Hash)>] RenewTokenResponse data, response status code and response headers
    def renew_token_with_http_info(client_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OAuthApi.renew_token ..."
      end
      # verify the required parameter 'client_id' is set
      fail ArgumentError, "Missing the required parameter 'client_id' when calling OAuthApi.renew_token" if client_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling OAuthApi.renew_token" if body.nil?
      # resource path
      local_var_path = "/oauth2/clients/{client_id}/access-token/renew".sub('{format}','json').sub('{' + 'client_id' + '}', client_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-06-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2ClientSecret']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RenewTokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuthApi#renew_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RevokeToken
    # Revokes an access token generated with the OAuth flow.  If an account has more than one OAuth access token for your application, this endpoint revokes all of them, regardless of which token you specify. When an OAuth access token is revoked, all of the active subscriptions associated with that OAuth token are canceled immediately.  __Important:__ The `Authorization` header for this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with the application secret on the Credentials page in the [application dashboard](https://connect.squareup.com/apps).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [RevokeTokenResponse]
    def revoke_token(body, opts = {})
      data, _status_code, _headers = revoke_token_with_http_info(body, opts)
      return data
    end

    # RevokeToken
    # Revokes an access token generated with the OAuth flow.  If an account has more than one OAuth access token for your application, this endpoint revokes all of them, regardless of which token you specify. When an OAuth access token is revoked, all of the active subscriptions associated with that OAuth token are canceled immediately.  __Important:__ The &#x60;Authorization&#x60; header for this endpoint must have the following format:  &#x60;&#x60;&#x60; Authorization: Client APPLICATION_SECRET &#x60;&#x60;&#x60;  Replace &#x60;APPLICATION_SECRET&#x60; with the application secret on the Credentials page in the [application dashboard](https://connect.squareup.com/apps).
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RevokeTokenResponse, Fixnum, Hash)>] RevokeTokenResponse data, response status code and response headers
    def revoke_token_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OAuthApi.revoke_token ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling OAuthApi.revoke_token" if body.nil?
      # resource path
      local_var_path = "/oauth2/revoke".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-06-12"

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2ClientSecret']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RevokeTokenResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OAuthApi#revoke_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
