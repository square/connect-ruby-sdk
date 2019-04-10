=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class LaborApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # CreateBreakType
    # Creates a new `BreakType`.   A `BreakType` is a template for creating `Break` objects.  You must provide the following values in your request to this endpoint:  - `location_id` - `break_name` - `expected_duration` - `is_paid`  You can only have 3 `BreakType` instances per location. If you attempt to add a 4th `BreakType` for a location, an `INVALID_REQUEST_ERROR` \"Exceeded limit of 3 breaks per location.\" is returned.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateBreakTypeResponse]
    def create_break_type(body, opts = {})
      data, _status_code, _headers = create_break_type_with_http_info(body, opts)
      return data
    end

    # CreateBreakType
    # Creates a new &#x60;BreakType&#x60;.   A &#x60;BreakType&#x60; is a template for creating &#x60;Break&#x60; objects.  You must provide the following values in your request to this endpoint:  - &#x60;location_id&#x60; - &#x60;break_name&#x60; - &#x60;expected_duration&#x60; - &#x60;is_paid&#x60;  You can only have 3 &#x60;BreakType&#x60; instances per location. If you attempt to add a 4th &#x60;BreakType&#x60; for a location, an &#x60;INVALID_REQUEST_ERROR&#x60; \&quot;Exceeded limit of 3 breaks per location.\&quot; is returned.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateBreakTypeResponse, Fixnum, Hash)>] CreateBreakTypeResponse data, response status code and response headers
    def create_break_type_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.create_break_type ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling LaborApi.create_break_type" if body.nil?
      # resource path
      local_var_path = "/v2/labor/break-types".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'CreateBreakTypeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#create_break_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CreateShift
    # Creates a new `Shift`.   A `Shift` represents a complete work day for a single employee.  You must provide the following values in your request to this endpoint:  - `location_id` - `employee_id` - `start_at`  An attempt to create a new `Shift` can result in a `BAD_REQUEST` error when: - The `status` of the new `Shift` is `OPEN` and the employee has another  shift with an `OPEN` status.  - The `start_at` date is in the future - the `start_at` or `end_at` overlaps another shift for the same employee - If `Break`s are set in the request, a break `start_at` must not be before the `Shift.start_at`. A break `end_at` must not be after the `Shift.end_at`
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateShiftResponse]
    def create_shift(body, opts = {})
      data, _status_code, _headers = create_shift_with_http_info(body, opts)
      return data
    end

    # CreateShift
    # Creates a new &#x60;Shift&#x60;.   A &#x60;Shift&#x60; represents a complete work day for a single employee.  You must provide the following values in your request to this endpoint:  - &#x60;location_id&#x60; - &#x60;employee_id&#x60; - &#x60;start_at&#x60;  An attempt to create a new &#x60;Shift&#x60; can result in a &#x60;BAD_REQUEST&#x60; error when: - The &#x60;status&#x60; of the new &#x60;Shift&#x60; is &#x60;OPEN&#x60; and the employee has another  shift with an &#x60;OPEN&#x60; status.  - The &#x60;start_at&#x60; date is in the future - the &#x60;start_at&#x60; or &#x60;end_at&#x60; overlaps another shift for the same employee - If &#x60;Break&#x60;s are set in the request, a break &#x60;start_at&#x60; must not be before the &#x60;Shift.start_at&#x60;. A break &#x60;end_at&#x60; must not be after the &#x60;Shift.end_at&#x60;
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateShiftResponse, Fixnum, Hash)>] CreateShiftResponse data, response status code and response headers
    def create_shift_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.create_shift ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling LaborApi.create_shift" if body.nil?
      # resource path
      local_var_path = "/v2/labor/shifts".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'CreateShiftResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#create_shift\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DeleteBreakType
    # Deletes an existing `BreakType`.   A `BreakType` can be deleted even if it is referenced from a `Shift`.
    # @param id UUID for the &#x60;BreakType&#x60; being deleted.
    # @param [Hash] opts the optional parameters
    # @return [DeleteBreakTypeResponse]
    def delete_break_type(id, opts = {})
      data, _status_code, _headers = delete_break_type_with_http_info(id, opts)
      return data
    end

    # DeleteBreakType
    # Deletes an existing &#x60;BreakType&#x60;.   A &#x60;BreakType&#x60; can be deleted even if it is referenced from a &#x60;Shift&#x60;.
    # @param id UUID for the &#x60;BreakType&#x60; being deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteBreakTypeResponse, Fixnum, Hash)>] DeleteBreakTypeResponse data, response status code and response headers
    def delete_break_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.delete_break_type ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.delete_break_type" if id.nil?
      # resource path
      local_var_path = "/v2/labor/break-types/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'DeleteBreakTypeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#delete_break_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DeleteShift
    # Deletes a `Shift`.
    # @param id UUID for the &#x60;Shift&#x60; being deleted.
    # @param [Hash] opts the optional parameters
    # @return [DeleteShiftResponse]
    def delete_shift(id, opts = {})
      data, _status_code, _headers = delete_shift_with_http_info(id, opts)
      return data
    end

    # DeleteShift
    # Deletes a &#x60;Shift&#x60;.
    # @param id UUID for the &#x60;Shift&#x60; being deleted.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteShiftResponse, Fixnum, Hash)>] DeleteShiftResponse data, response status code and response headers
    def delete_shift_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.delete_shift ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.delete_shift" if id.nil?
      # resource path
      local_var_path = "/v2/labor/shifts/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'DeleteShiftResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#delete_shift\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GetBreakType
    # Returns a single `BreakType` specified by id.
    # @param id UUID for the &#x60;BreakType&#x60; being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [GetBreakTypeResponse]
    def get_break_type(id, opts = {})
      data, _status_code, _headers = get_break_type_with_http_info(id, opts)
      return data
    end

    # GetBreakType
    # Returns a single &#x60;BreakType&#x60; specified by id.
    # @param id UUID for the &#x60;BreakType&#x60; being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetBreakTypeResponse, Fixnum, Hash)>] GetBreakTypeResponse data, response status code and response headers
    def get_break_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.get_break_type ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.get_break_type" if id.nil?
      # resource path
      local_var_path = "/v2/labor/break-types/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'GetBreakTypeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#get_break_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GetEmployeeWage
    # Returns a single `EmployeeWage` specified by id.
    # @param id UUID for the &#x60;EmployeeWage&#x60; being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [GetEmployeeWageResponse]
    def get_employee_wage(id, opts = {})
      data, _status_code, _headers = get_employee_wage_with_http_info(id, opts)
      return data
    end

    # GetEmployeeWage
    # Returns a single &#x60;EmployeeWage&#x60; specified by id.
    # @param id UUID for the &#x60;EmployeeWage&#x60; being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetEmployeeWageResponse, Fixnum, Hash)>] GetEmployeeWageResponse data, response status code and response headers
    def get_employee_wage_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.get_employee_wage ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.get_employee_wage" if id.nil?
      # resource path
      local_var_path = "/v2/labor/employee-wages/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'GetEmployeeWageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#get_employee_wage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GetShift
    # Returns a single `Shift` specified by id.
    # @param id UUID for the &#x60;Shift&#x60; being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [GetShiftResponse]
    def get_shift(id, opts = {})
      data, _status_code, _headers = get_shift_with_http_info(id, opts)
      return data
    end

    # GetShift
    # Returns a single &#x60;Shift&#x60; specified by id.
    # @param id UUID for the &#x60;Shift&#x60; being retrieved.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetShiftResponse, Fixnum, Hash)>] GetShiftResponse data, response status code and response headers
    def get_shift_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.get_shift ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.get_shift" if id.nil?
      # resource path
      local_var_path = "/v2/labor/shifts/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'GetShiftResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#get_shift\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListBreakTypes
    # Returns a paginated list of `BreakType` instances for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_id Filter Break Types returned to only those that are associated with the specified location.
    # @option opts [Integer] :limit Maximum number of Break Types to return per page. Can range between 1 and 200. The default is the maximum at 200.
    # @option opts [String] :cursor Pointer to the next page of Break Type results to fetch.
    # @return [ListBreakTypesResponse]
    def list_break_types(opts = {})
      data, _status_code, _headers = list_break_types_with_http_info(opts)
      return data
    end

    # ListBreakTypes
    # Returns a paginated list of &#x60;BreakType&#x60; instances for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location_id Filter Break Types returned to only those that are associated with the specified location.
    # @option opts [Integer] :limit Maximum number of Break Types to return per page. Can range between 1 and 200. The default is the maximum at 200.
    # @option opts [String] :cursor Pointer to the next page of Break Type results to fetch.
    # @return [Array<(ListBreakTypesResponse, Fixnum, Hash)>] ListBreakTypesResponse data, response status code and response headers
    def list_break_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.list_break_types ..."
      end
      # resource path
      local_var_path = "/v2/labor/break-types".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'location_id'] = opts[:'location_id'] if !opts[:'location_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'ListBreakTypesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#list_break_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListEmployeeWages
    # Returns a paginated list of `EmployeeWage` instances for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :employee_id Filter wages returned to only those that are associated with the specified employee.
    # @option opts [Integer] :limit Maximum number of Employee Wages to return per page. Can range between 1 and 200. The default is the maximum at 200.
    # @option opts [String] :cursor Pointer to the next page of Employee Wage results to fetch.
    # @return [ListEmployeeWagesResponse]
    def list_employee_wages(opts = {})
      data, _status_code, _headers = list_employee_wages_with_http_info(opts)
      return data
    end

    # ListEmployeeWages
    # Returns a paginated list of &#x60;EmployeeWage&#x60; instances for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :employee_id Filter wages returned to only those that are associated with the specified employee.
    # @option opts [Integer] :limit Maximum number of Employee Wages to return per page. Can range between 1 and 200. The default is the maximum at 200.
    # @option opts [String] :cursor Pointer to the next page of Employee Wage results to fetch.
    # @return [Array<(ListEmployeeWagesResponse, Fixnum, Hash)>] ListEmployeeWagesResponse data, response status code and response headers
    def list_employee_wages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.list_employee_wages ..."
      end
      # resource path
      local_var_path = "/v2/labor/employee-wages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'employee_id'] = opts[:'employee_id'] if !opts[:'employee_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'ListEmployeeWagesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#list_employee_wages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListWorkweekConfigs
    # Returns a list of `WorkweekConfig` instances for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of Workweek Configs to return per page.
    # @option opts [String] :cursor Pointer to the next page of Workweek Config results to fetch.
    # @return [ListWorkweekConfigsResponse]
    def list_workweek_configs(opts = {})
      data, _status_code, _headers = list_workweek_configs_with_http_info(opts)
      return data
    end

    # ListWorkweekConfigs
    # Returns a list of &#x60;WorkweekConfig&#x60; instances for a business.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Maximum number of Workweek Configs to return per page.
    # @option opts [String] :cursor Pointer to the next page of Workweek Config results to fetch.
    # @return [Array<(ListWorkweekConfigsResponse, Fixnum, Hash)>] ListWorkweekConfigsResponse data, response status code and response headers
    def list_workweek_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.list_workweek_configs ..."
      end
      # resource path
      local_var_path = "/v2/labor/workweek-configs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'ListWorkweekConfigsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#list_workweek_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # SearchShifts
    # Returns a paginated list of `Shift` records for a business.  The list to be returned can be filtered by: - Location IDs **and** - employee IDs **and** - shift status (`OPEN`, `CLOSED`) **and** - shift start **and** - shift end **and** - work day details  The list can be sorted by: - `start_at` - `end_at` - `created_at` - `updated_at`
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [SearchShiftsResponse]
    def search_shifts(body, opts = {})
      data, _status_code, _headers = search_shifts_with_http_info(body, opts)
      return data
    end

    # SearchShifts
    # Returns a paginated list of &#x60;Shift&#x60; records for a business.  The list to be returned can be filtered by: - Location IDs **and** - employee IDs **and** - shift status (&#x60;OPEN&#x60;, &#x60;CLOSED&#x60;) **and** - shift start **and** - shift end **and** - work day details  The list can be sorted by: - &#x60;start_at&#x60; - &#x60;end_at&#x60; - &#x60;created_at&#x60; - &#x60;updated_at&#x60;
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchShiftsResponse, Fixnum, Hash)>] SearchShiftsResponse data, response status code and response headers
    def search_shifts_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.search_shifts ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling LaborApi.search_shifts" if body.nil?
      # resource path
      local_var_path = "/v2/labor/shifts/search".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'SearchShiftsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#search_shifts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateBreakType
    # Updates an existing `BreakType`.
    # @param id UUID for the &#x60;BreakType&#x60; being updated.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpdateBreakTypeResponse]
    def update_break_type(id, body, opts = {})
      data, _status_code, _headers = update_break_type_with_http_info(id, body, opts)
      return data
    end

    # UpdateBreakType
    # Updates an existing &#x60;BreakType&#x60;.
    # @param id UUID for the &#x60;BreakType&#x60; being updated.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateBreakTypeResponse, Fixnum, Hash)>] UpdateBreakTypeResponse data, response status code and response headers
    def update_break_type_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.update_break_type ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.update_break_type" if id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling LaborApi.update_break_type" if body.nil?
      # resource path
      local_var_path = "/v2/labor/break-types/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'UpdateBreakTypeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#update_break_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateShift
    # Updates an existing `Shift`.   When adding a `Break` to a `Shift`, any earlier `Breaks` in the `Shift` have  the `end_at` property set to a valid RFC-3339 datetime string.   When closing a `Shift`, all `Break` instances in the shift must be complete with `end_at` set on each `Break`.
    # @param id ID of the object being updated.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpdateShiftResponse]
    def update_shift(id, body, opts = {})
      data, _status_code, _headers = update_shift_with_http_info(id, body, opts)
      return data
    end

    # UpdateShift
    # Updates an existing &#x60;Shift&#x60;.   When adding a &#x60;Break&#x60; to a &#x60;Shift&#x60;, any earlier &#x60;Breaks&#x60; in the &#x60;Shift&#x60; have  the &#x60;end_at&#x60; property set to a valid RFC-3339 datetime string.   When closing a &#x60;Shift&#x60;, all &#x60;Break&#x60; instances in the shift must be complete with &#x60;end_at&#x60; set on each &#x60;Break&#x60;.
    # @param id ID of the object being updated.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateShiftResponse, Fixnum, Hash)>] UpdateShiftResponse data, response status code and response headers
    def update_shift_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.update_shift ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.update_shift" if id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling LaborApi.update_shift" if body.nil?
      # resource path
      local_var_path = "/v2/labor/shifts/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'UpdateShiftResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#update_shift\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateWorkweekConfig
    # Updates a `WorkweekConfig`.
    # @param id UUID for the &#x60;WorkweekConfig&#x60; object being updated.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpdateWorkweekConfigResponse]
    def update_workweek_config(id, body, opts = {})
      data, _status_code, _headers = update_workweek_config_with_http_info(id, body, opts)
      return data
    end

    # UpdateWorkweekConfig
    # Updates a &#x60;WorkweekConfig&#x60;.
    # @param id UUID for the &#x60;WorkweekConfig&#x60; object being updated.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateWorkweekConfigResponse, Fixnum, Hash)>] UpdateWorkweekConfigResponse data, response status code and response headers
    def update_workweek_config_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LaborApi.update_workweek_config ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LaborApi.update_workweek_config" if id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling LaborApi.update_workweek_config" if body.nil?
      # resource path
      local_var_path = "/v2/labor/workweek-configs/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      
      header_params['Square-Version'] = "2019-04-10"

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
        :return_type => 'UpdateWorkweekConfigResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LaborApi#update_workweek_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
