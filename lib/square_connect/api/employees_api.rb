=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class EmployeesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # ListEmployees
    # Gets a list of `Employee` objects for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_id Filter employees returned to only those that are associated with the specified location.
    # @option opts [String] :status Specifies the EmployeeStatus to filter the employee by.
    # @option opts [Integer] :limit The number of employees to be returned on each page.
    # @option opts [String] :cursor The token required to retrieve the specified page of results.
    # @return [ListEmployeesResponse]
    def list_employees(opts = {})
      data, _status_code, _headers = list_employees_with_http_info(opts)
      return data
    end

    # ListEmployees
    # Gets a list of &#x60;Employee&#x60; objects for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_id Filter employees returned to only those that are associated with the specified location.
    # @option opts [String] :status Specifies the EmployeeStatus to filter the employee by.
    # @option opts [Integer] :limit The number of employees to be returned on each page.
    # @option opts [String] :cursor The token required to retrieve the specified page of results.
    # @return [Array<(ListEmployeesResponse, Fixnum, Hash)>] ListEmployeesResponse data, response status code and response headers
    def list_employees_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmployeesApi.list_employees ..."
      end
      if opts[:'status'] && !['ACTIVE', 'INACTIVE'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of ACTIVE, INACTIVE'
      end
      # resource path
      local_var_path = "/v2/employees".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'location_id'] = opts[:'location_id'] if !opts[:'location_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

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
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListEmployeesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmployeesApi#list_employees\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveEmployee
    # Gets an `Employee` by Square-assigned employee `ID` (UUID)
    # @param id UUID for the employee that was requested.
    # @param [Hash] opts the optional parameters
    # @return [RetrieveEmployeeResponse]
    def retrieve_employee(id, opts = {})
      data, _status_code, _headers = retrieve_employee_with_http_info(id, opts)
      return data
    end

    # RetrieveEmployee
    # Gets an &#x60;Employee&#x60; by Square-assigned employee &#x60;ID&#x60; (UUID)
    # @param id UUID for the employee that was requested.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetrieveEmployeeResponse, Fixnum, Hash)>] RetrieveEmployeeResponse data, response status code and response headers
    def retrieve_employee_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmployeesApi.retrieve_employee ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling EmployeesApi.retrieve_employee" if id.nil?
      # resource path
      local_var_path = "/v2/employees/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RetrieveEmployeeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmployeesApi#retrieve_employee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
