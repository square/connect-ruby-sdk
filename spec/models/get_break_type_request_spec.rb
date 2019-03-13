=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::GetBreakTypeRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetBreakTypeRequest' do
  before do
    # run before each test
    @instance = SquareConnect::GetBreakTypeRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetBreakTypeRequest' do
    it 'should create an instact of GetBreakTypeRequest' do
      expect(@instance).to be_instance_of(SquareConnect::GetBreakTypeRequest)
    end
  end
end

