=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::V1FeeInclusionType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1FeeInclusionType' do
  before do
    # run before each test
    @instance = SquareConnect::V1FeeInclusionType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1FeeInclusionType' do
    it 'should create an instact of V1FeeInclusionType' do
      expect(@instance).to be_instance_of(SquareConnect::V1FeeInclusionType)
    end
  end
end

