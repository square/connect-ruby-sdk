RSpec.shared_context 'Catalog definitions' do
  let(:catalog_instance) do
    configuration = SquareConnect::Configuration.new do |config|
      config.access_token = account["access_token"]
    end
    client = SquareConnect::ApiClient.new(configuration)

    SquareConnect::CatalogApi.new(client)
  end

  let(:beverages_client_id) { '#Beverages' }
  let(:beverages) do
    {
      type: SquareConnect::CatalogObjectType::CATEGORY,
      id: beverages_client_id,
      category_data: {
        name: 'Beverages'
      }
    }
  end

  let(:sales_tax_client_id) { '#SalesTax' }
  let(:sales_tax) do
    {
      type: SquareConnect::CatalogObjectType::TAX,
      id: sales_tax_client_id,
      present_at_all_locations: true,
      tax_data: {
        name: 'Sales Tax',
        calculation_phase: SquareConnect::TaxCalculationPhase::SUBTOTAL_PHASE,
        inclusion_type: SquareConnect::TaxInclusionType::ADDITIVE,
        percentage: '5.0',
        applies_to_custom_amounts: true,
        enabled: true
      }
    }
  end

  let(:milks_client_id) { '#Milks' }
  let(:whole_milk_client_id) { '#WholeMilk' }
  let(:skim_milk_client_id) { '#SkimMilk' }
  let(:soy_milk_client_id) { '#SoymMilk' }
  let(:milks) do
    {
      type: SquareConnect::CatalogObjectType::MODIFIER_LIST,
      id: milks_client_id,
      modifier_list_data: {
        name: 'Milks',
        modifiers: [
          {
            type: SquareConnect::CatalogObjectType::MODIFIER,
            id: whole_milk_client_id,
            modifier_data: {
              name: 'Whole Milk'
            }
          },
          {
            type: SquareConnect::CatalogObjectType::MODIFIER,
            id: skim_milk_client_id,
            modifier_data: {
              name: 'Skim Milk'
            }
          },
          {
            type: SquareConnect::CatalogObjectType::MODIFIER,
            id: soy_milk_client_id,
            modifier_data: {
              name: 'Soy Milk',
              price_money: {
                amount: 50,
                currency: SquareConnect::Currency::USD
              }
            }
          },
        ]
     }
    }
  end

  let(:syrups_client_id) { '#Syrups' }
  let(:hazelnut_client_id) { '#Hazelnut' }
  let(:vanilla_client_id) { '#Vanilla' }
  let(:chocolate_client_id) { '#Chocolate' }
  let(:syrups) do
    {
      type: SquareConnect::CatalogObjectType::MODIFIER_LIST,
      id: syrups_client_id,
      modifier_list_data: {
        name: 'Syrups',
        modifiers: [
          {
            type: SquareConnect::CatalogObjectType::MODIFIER,
            id: hazelnut_client_id,
            modifier_data: {
              name: 'Hazelnut'
            }
          },
          {
            type: SquareConnect::CatalogObjectType::MODIFIER,
            id: vanilla_client_id,
            modifier_data: {
              name: 'Vanilla'
            }
          },
          {
            type: SquareConnect::CatalogObjectType::MODIFIER,
            id: chocolate_client_id,
            modifier_data: {
              name: 'Chocolate'
            }
          },
        ]
      }
    }
  end

  let(:coffee_client_id) { '#Coffee' }
  let(:small_coffee_client_id) { '#SmallCoffee' }
  let(:large_coffee_client_id) { '#LargeCoffee' }
  let(:coffee) do
    {
      type: SquareConnect::CatalogObjectType::ITEM,
      id: coffee_client_id,
      present_at_all_locations: true,
      item_data: {
        name: 'Coffee',
        description: 'Hot bean juice',
        abbreviation: 'Co',
        category_id: beverages_client_id,
        modifier_list_info: [
          {
            modifier_list_id: milks_client_id
          }
        ],
        tax_ids: [sales_tax_client_id],
        variations: [
          {
            type: SquareConnect::CatalogObjectType::ITEM_VARIATION,
            id: small_coffee_client_id,
            present_at_all_locations: true,
            item_variation_data: {
              item_id: coffee_client_id,
              name: 'Small',
              pricing_type: SquareConnect::CatalogPricingType::FIXED_PRICING,
              price_money: {
                amount: 195,
                currency: SquareConnect::Currency::USD
              }
            }
          },
          {
            type: SquareConnect::CatalogObjectType::ITEM_VARIATION,
            id: large_coffee_client_id,
            present_at_all_locations: true,
            item_variation_data: {
              item_id: coffee_client_id,
              name: 'Large',
              pricing_type: SquareConnect::CatalogPricingType::FIXED_PRICING,
              price_money: {
                amount: 250,
                currency: SquareConnect::Currency::USD
              }
            }
          }
        ]
      }
    }
  end

  let(:tea_client_id) { '#Tea' }
  let(:small_tea_client_id) { '#SmallTea' }
  let(:large_tea_client_id) { '#LargeTea' }
  let(:tea) do
    {
      type: SquareConnect::CatalogObjectType::ITEM,
      id: tea_client_id,
      present_at_all_locations: true,
      item_data: {
        name: 'Tea',
        description: 'Hot leaf juice',
        abbreviation: 'Te',
        category_id: beverages_client_id,
        tax_ids: [sales_tax_client_id],
        variations: [
          {
            type: SquareConnect::CatalogObjectType::ITEM_VARIATION,
            id: small_tea_client_id,
            present_at_all_locations: true,
            item_variation_data: {
              item_id: tea_client_id,
              name: 'Small',
              pricing_type: SquareConnect::CatalogPricingType::FIXED_PRICING,
              price_money: {
                amount: 150,
                currency: SquareConnect::Currency::USD
              }
            }
          },
          {
            type: SquareConnect::CatalogObjectType::ITEM_VARIATION,
            id: large_tea_client_id,
            present_at_all_locations: true,
            item_variation_data: {
              item_id: tea_client_id,
              name: 'Large',
              pricing_type: SquareConnect::CatalogPricingType::FIXED_PRICING,
              price_money: {
                amount: 200,
                currency: SquareConnect::Currency::USD
              }
            }
          }
        ]
      }
    }
  end

  let(:amount_discount_client_id) { '#AmountDiscount' }
  let(:amount_discount) do
    {
      type: SquareConnect::CatalogObjectType::DISCOUNT,
      id: amount_discount_client_id,
      discount_data: {
        name: '50 cents off',
        amount_money: {
          amount: 50,
          currency: SquareConnect::Currency::USD
        }
      }
    }
  end

  let(:object_definitions) { [beverages, milks, syrups, coffee, tea, sales_tax, amount_discount] }

  let!(:id_map) do
    # Set a unique idempotency key for each request
    body = SquareConnect::BatchUpsertCatalogObjectsRequest.new
    body.idempotency_key = SecureRandom.uuid
    body.batches = [{
      objects: object_definitions
    }]

    # Batch upsert the objects
    response = catalog_instance.batch_upsert_catalog_objects(body)

    mapping = response.id_mappings.map do |id_mapping|
      [id_mapping.client_object_id, id_mapping.object_id]
    end

    mapping.to_h
  end

  let(:coffee_id) { id_map[coffee_client_id] }
  let(:small_coffee_id) { id_map[small_coffee_client_id] }
  let(:large_coffee_id) { id_map[large_coffee_client_id] }
  let(:small_tea_id) { id_map[small_tea_client_id] }
  let(:sales_tax_id)  { id_map[sales_tax_client_id] }
  let(:beverages_id)  { id_map[beverages_client_id] }
  let(:milks_id)  { id_map[milks_client_id] }
  let(:syrups_id) { id_map[syrups_client_id] }
  let(:soy_milk_id) { id_map[soy_milk_client_id] }
  let(:amount_discount_id) { id_map[amount_discount_client_id] }

  after(:each) { delete_test_catalog }

  def delete_test_catalog
    opts = {}
    objects_to_delete = []

    begin
      response = catalog_instance.list_catalog(opts)
      objects_to_delete += response.objects.map(&:id)
      opts[:cursor] = response.cursor
    end while opts[:cursor]

    objects_to_delete.each_slice(200) do |object_ids|
      body = SquareConnect::BatchDeleteCatalogObjectsRequest.new
      body.object_ids = object_ids
      catalog_instance.batch_delete_catalog_objects(body)
    end
  end

end