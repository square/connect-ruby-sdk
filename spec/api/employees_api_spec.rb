=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SquareConnect::EmployeesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmployeesApi' do
  before do
    # run before each test
    @instance = SquareConnect::EmployeesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmployeesApi' do
    it 'should create an instact of EmployeesApi' do
      expect(@instance).to be_instance_of(SquareConnect::EmployeesApi)
    end
  end

  # unit tests for list_employees
  # ListEmployees
  # Gets a list of &#x60;Employee&#x60; objects for a business.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :location_id Filter employees returned to only those that are associated with the specified location.
  # @option opts [String] :status Specifies the EmployeeStatus to filter the employee by.
  # @option opts [Integer] :limit The number of employees to be returned on each page.
  # @option opts [String] :cursor The token required to retrieve the specified page of results.
  # @return [ListEmployeesResponse]
  describe 'list_employees test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_employee
  # RetrieveEmployee
  # Gets an &#x60;Employee&#x60; by Square-assigned employee &#x60;ID&#x60; (UUID)
  # @param id UUID for the employee that was requested.
  # @param [Hash] opts the optional parameters
  # @return [RetrieveEmployeeResponse]
  describe 'retrieve_employee test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
