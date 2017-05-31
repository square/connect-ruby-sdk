=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::SearchCatalogObjectsRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchCatalogObjectsRequest' do
  before do
    # run before each test
    @instance = SquareConnect::SearchCatalogObjectsRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchCatalogObjectsRequest' do
    it 'should create an instact of SearchCatalogObjectsRequest' do
      expect(@instance).to be_instance_of(SquareConnect::SearchCatalogObjectsRequest)
    end
  end
  describe 'test attribute "cursor"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "object_types"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["ITEM", "CATEGORY", "ITEM_VARIATION", "TAX", "DISCOUNT", "MODIFIER_LIST", "MODIFIER"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.object_types = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "include_deleted_objects"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "include_related_objects"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "begin_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "query"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "limit"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
