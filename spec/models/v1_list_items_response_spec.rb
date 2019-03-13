=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::V1ListItemsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1ListItemsResponse' do
  before do
    # run before each test
    @instance = SquareConnect::V1ListItemsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1ListItemsResponse' do
    it 'should create an instact of V1ListItemsResponse' do
      expect(@instance).to be_instance_of(SquareConnect::V1ListItemsResponse)
    end
  end
  describe 'test attribute "items"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

