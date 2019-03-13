=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SquareConnect::LaborApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LaborApi' do
  before do
    # run before each test
    @instance = SquareConnect::LaborApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LaborApi' do
    it 'should create an instact of LaborApi' do
      expect(@instance).to be_instance_of(SquareConnect::LaborApi)
    end
  end

  # unit tests for create_break_type
  # CreateBreakType
  # Creates a new &#x60;BreakType&#x60;.   A &#x60;BreakType&#x60; is a template for creating &#x60;Break&#x60; objects.  You must provide the following values in your request to this endpoint:  - &#x60;location_id&#x60; - &#x60;break_name&#x60; - &#x60;expected_duration&#x60; - &#x60;is_paid&#x60;  You can only have 3 &#x60;BreakType&#x60; instances per location. If you attempt to add a 4th &#x60;BreakType&#x60; for a location, an &#x60;INVALID_REQUEST_ERROR&#x60; \&quot;Exceeded limit of 3 breaks per location.\&quot; is returned.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [CreateBreakTypeResponse]
  describe 'create_break_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_shift
  # CreateShift
  # Creates a new &#x60;Shift&#x60;.   A &#x60;Shift&#x60; represents a complete work day for a single employee.  You must provide the following values in your request to this endpoint:  - &#x60;location_id&#x60; - &#x60;employee_id&#x60; - &#x60;start_at&#x60;  An attempt to create a new &#x60;Shift&#x60; can result in a &#x60;BAD_REQUEST&#x60; error when: - The &#x60;status&#x60; of the new &#x60;Shift&#x60; is &#x60;OPEN&#x60; and the employee has another  shift with an &#x60;OPEN&#x60; status.  - The &#x60;start_at&#x60; date is in the future - the &#x60;start_at&#x60; or &#x60;end_at&#x60; overlaps another shift for the same employee - If &#x60;Break&#x60;s are set in the request, a break &#x60;start_at&#x60; must not be before the &#x60;Shift.start_at&#x60;. A break &#x60;end_at&#x60; must not be after the &#x60;Shift.end_at&#x60;
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [CreateShiftResponse]
  describe 'create_shift test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_break_type
  # DeleteBreakType
  # Deletes an existing &#x60;BreakType&#x60;.   A &#x60;BreakType&#x60; can be deleted even if it is referenced from a &#x60;Shift&#x60;.
  # @param id UUID for the &#x60;BreakType&#x60; being deleted.
  # @param [Hash] opts the optional parameters
  # @return [DeleteBreakTypeResponse]
  describe 'delete_break_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_shift
  # DeleteShift
  # Deletes a &#x60;Shift&#x60;.
  # @param id UUID for the &#x60;Shift&#x60; being deleted.
  # @param [Hash] opts the optional parameters
  # @return [DeleteShiftResponse]
  describe 'delete_shift test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_break_type
  # GetBreakType
  # Returns a single &#x60;BreakType&#x60; specified by id.
  # @param id UUID for the &#x60;BreakType&#x60; being retrieved.
  # @param [Hash] opts the optional parameters
  # @return [GetBreakTypeResponse]
  describe 'get_break_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_employee_wage
  # GetEmployeeWage
  # Returns a single &#x60;EmployeeWage&#x60; specified by id.
  # @param id UUID for the &#x60;EmployeeWage&#x60; being retrieved.
  # @param [Hash] opts the optional parameters
  # @return [GetEmployeeWageResponse]
  describe 'get_employee_wage test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_shift
  # GetShift
  # Returns a single &#x60;Shift&#x60; specified by id.
  # @param id UUID for the &#x60;Shift&#x60; being retrieved.
  # @param [Hash] opts the optional parameters
  # @return [GetShiftResponse]
  describe 'get_shift test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_break_types
  # ListBreakTypes
  # Returns a paginated list of &#x60;BreakType&#x60; instances for a business.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :location_id Filter Break Types returned to only those that are associated with the specified location.
  # @option opts [Integer] :limit Maximum number of Break Types to return per page. Can range between 1 and 200. The default is the maximum at 200.
  # @option opts [String] :cursor Pointer to the next page of Break Type results to fetch.
  # @return [ListBreakTypesResponse]
  describe 'list_break_types test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_employee_wages
  # ListEmployeeWages
  # Returns a paginated list of &#x60;EmployeeWage&#x60; instances for a business.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :employee_id Filter wages returned to only those that are associated with the specified employee.
  # @option opts [Integer] :limit Maximum number of Employee Wages to return per page. Can range between 1 and 200. The default is the maximum at 200.
  # @option opts [String] :cursor Pointer to the next page of Employee Wage results to fetch.
  # @return [ListEmployeeWagesResponse]
  describe 'list_employee_wages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_workweek_configs
  # ListWorkweekConfigs
  # Returns a list of &#x60;WorkweekConfig&#x60; instances for a business.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Maximum number of Workweek Configs to return per page.
  # @option opts [String] :cursor Pointer to the next page of Workweek Config results to fetch.
  # @return [ListWorkweekConfigsResponse]
  describe 'list_workweek_configs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_shifts
  # SearchShifts
  # Returns a paginated list of &#x60;Shift&#x60; records for a business.  The list to be returned can be filtered by: - Location IDs **and** - employee IDs **and** - shift status (&#x60;OPEN&#x60;, &#x60;CLOSED&#x60;) **and** - shift start **and** - shift end **and** - work day details  The list can be sorted by: - &#x60;start_at&#x60; - &#x60;end_at&#x60; - &#x60;created_at&#x60; - &#x60;updated_at&#x60;
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [SearchShiftsResponse]
  describe 'search_shifts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_break_type
  # UpdateBreakType
  # Updates an existing &#x60;BreakType&#x60;.
  # @param id UUID for the &#x60;BreakType&#x60; being updated.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [UpdateBreakTypeResponse]
  describe 'update_break_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_shift
  # UpdateShift
  # Updates an existing &#x60;Shift&#x60;.   When adding a &#x60;Break&#x60; to a &#x60;Shift&#x60;, any earlier &#x60;Breaks&#x60; in the &#x60;Shift&#x60; have  the &#x60;end_at&#x60; property set to a valid RFC-3339 datetime string.   When closing a &#x60;Shift&#x60;, all &#x60;Break&#x60; instances in the shift must be complete with &#x60;end_at&#x60; set on each &#x60;Break&#x60;.
  # @param id ID of the object being updated.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [UpdateShiftResponse]
  describe 'update_shift test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_workweek_config
  # UpdateWorkweekConfig
  # Updates a &#x60;WorkweekConfig&#x60;.
  # @param id UUID for the &#x60;WorkweekConfig&#x60; object being updated.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [UpdateWorkweekConfigResponse]
  describe 'update_workweek_config test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
