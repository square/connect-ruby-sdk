require 'spec_helper'
require 'json'
require 'securerandom'

describe 'OrderApi' do
  let(:accounts) { load_accounts() }
  let(:account) { accounts['US-Prod'] }
  let(:location_id) { account['location_id'] }
  let(:instance) do
    configuration = SquareConnect::Configuration.new do |config|
      config.access_token = account['access_token']
    end
    client = SquareConnect::ApiClient.new(configuration)

    SquareConnect::OrdersApi.new(client)
  end


  describe 'test an instance of OrderApi' do
    it 'should create an instact of OrderApi' do
      expect(instance).to be_instance_of(SquareConnect::OrdersApi)
    end
  end

  describe 'create_order test' do
    context 'with custom items' do
      let(:request) do
        {
          idempotency_key: SecureRandom.uuid,
          reference_id: 'order ref id',
          line_items: [
            {
              name: 'Espresso',
              quantity: '2',
              note: 'some note',
              base_price_money: {
                amount: 200,
                currency: 'USD'
              }
            }
          ]
        }
      end

      it "should create a order object" do
        response = instance.create_order(location_id, request)

        expect(response.errors).to be_nil
        subject = response.order
        expect(subject).not_to be_nil

        expect(subject).to have_attributes(
          id: subject.id,
          location_id: location_id,
          reference_id: 'order ref id',
          line_items: contain_exactly(
            have_attributes(
              name: 'Espresso',
              quantity: '2',
              note: 'some note',
              base_price_money: have_attributes(amount: 200, currency: 'USD'),
              gross_sales_money: have_attributes(amount: 400, currency: 'USD'),
              total_discount_money: have_attributes(amount: 0, currency: "USD"),
              total_money: have_attributes(amount: 400, currency: "USD"),
              total_tax_money: have_attributes(amount: 0, currency: "USD"),
            )
          ),
          total_discount_money: have_attributes(amount: 0, currency: "USD"),
          total_money: have_attributes(amount: 400, currency: "USD"),
          total_tax_money: have_attributes(amount: 0, currency: "USD"),
        )

      end
    end

    context 'with catalog items' do

      include_context 'Catalog definitions'

      let(:request) do
        {
          idempotency_key: SecureRandom.uuid,
          reference_id: 'order ref id with catalog',
          line_items: [
            {
              catalog_object_id: large_coffee_id,
              quantity: '2',
              modifiers: [
                {catalog_object_id: soy_milk_id}
              ],
              discounts: [
                {catalog_object_id: amount_discount_id}
              ],
              taxes: [
                {catalog_object_id: sales_tax_id}
              ]
            }
          ]
        }
      end

      it "should create a order object with catalog objects" do
        response = instance.create_order(location_id, request)

        expect(response.errors).to be_nil
        subject = response.order
        expect(subject).not_to be_nil

        expect(subject).to have_attributes(
          id: subject.id,
          location_id: location_id,
          reference_id: 'order ref id with catalog',
          line_items: contain_exactly(
            have_attributes(
              name: 'Coffee',
              quantity: '2',
              variation_name: 'Large',
              modifiers: contain_exactly(
                have_attributes(
                  catalog_object_id: soy_milk_id,
                  name: 'Soy Milk',
                  base_price_money: have_attributes(amount: 50, currency: 'USD'),
                  total_price_money: have_attributes(amount: 100, currency: 'USD') # $0.50 * 2
                )
              ),
              taxes: contain_exactly(
                have_attributes(
                  catalog_object_id: sales_tax_id,
                  name: 'Sales Tax',
                  type: SquareConnect::OrderLineItemTaxType::ADDITIVE,
                  percentage: '5.0',
                  # ((($2.50 + $0.50) * 2) - $0.50) * 5% = $0.28
                  applied_money: have_attributes(amount: 28, currency: 'USD'),
                )
              ),
              discounts: contain_exactly(
                have_attributes(
                  catalog_object_id: amount_discount_id,
                  name: '50 cents off',
                  type: SquareConnect::CatalogDiscountType::FIXED_AMOUNT,
                  amount_money: have_attributes(amount: 50, currency: 'USD'),
                  applied_money: have_attributes(amount: 50, currency: 'USD'),
                  scope: SquareConnect::OrderLineItemDiscountScope::LINE_ITEM
                )
              ),
              base_price_money: have_attributes(amount: 250, currency: 'USD'),
              gross_sales_money: have_attributes(amount: 600, currency: 'USD'),
              total_discount_money: have_attributes(amount: 50, currency: "USD"),
              total_money: have_attributes(amount: 578, currency: "USD"),
              # ($6 - $0.50) *  5% additive = $0.28
              total_tax_money: have_attributes(amount: 28, currency: "USD"),
            )
          ),
          total_discount_money: have_attributes(amount: 50, currency: "USD"),
          total_money: have_attributes(amount: 578, currency: "USD"),
          total_tax_money: have_attributes(amount: 28, currency: "USD"),
        )

      end


    end

  end

end
