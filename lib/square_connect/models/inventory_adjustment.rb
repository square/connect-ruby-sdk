=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents a change in state or quantity of product inventory at a particular time and location.
  class InventoryAdjustment
    # A unique ID generated by Square for the [InventoryAdjustment](#type-inventoryadjustment).
    attr_accessor :id

    # An optional ID provided by the application to tie the [InventoryAdjustment](#type-inventoryadjustment) to an external system.
    attr_accessor :reference_id

    # The [InventoryState](#type-inventorystate) of the related quantity of items before the adjustment. See [InventoryState](#type-inventorystate) for possible values
    attr_accessor :from_state

    # The [InventoryState](#type-inventorystate) of the related quantity of items after the adjustment. See [InventoryState](#type-inventorystate) for possible values
    attr_accessor :to_state

    # The Square ID of the [Location](#type-location) where the related quantity of items are being tracked.
    attr_accessor :location_id

    # The Square generated ID of the [CatalogObject](#type-catalogobject) being tracked.
    attr_accessor :catalog_object_id

    # The [CatalogObjectType](#type-catalogobjecttype) of the [CatalogObject](#type-catalogobject) being tracked. Tracking is only supported for the `ITEM_VARIATION` type.
    attr_accessor :catalog_object_type

    # The number of items affected by the adjustment as a decimal string. Fractional quantities are not supported.
    attr_accessor :quantity

    # The read-only total price paid for goods associated with the adjustment. Present if and only if `to_state` is `SOLD`. Always non-negative.
    attr_accessor :total_price_money

    # A client-generated timestamp in RFC 3339 format that indicates when the adjustment took place. For write actions, the `occurred_at` timestamp cannot be older than 24 hours or in the future relative to the time of the request.
    attr_accessor :occurred_at

    # A read-only timestamp in RFC 3339 format that indicates when Square received the adjustment.
    attr_accessor :created_at

    # Read-only information about the application that caused the inventory adjustment.
    attr_accessor :source

    # The Square ID of the [Employee](#type-employee) responsible for the inventory adjustment.
    attr_accessor :employee_id

    # The read-only Square ID of the [Transaction][#type-transaction] that caused the adjustment. Only relevant for payment-related state transitions.
    attr_accessor :transaction_id

    # The read-only Square ID of the [Refund][#type-refund] that caused the adjustment. Only relevant for refund-related state transitions.
    attr_accessor :refund_id

    # The read-only Square ID of the purchase order that caused the adjustment. Only relevant for state transitions from the Square for Retail app.
    attr_accessor :purchase_order_id

    # The read-only Square ID of the Square goods receipt that caused the adjustment. Only relevant for state transitions from the Square for Retail app.
    attr_accessor :goods_receipt_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'reference_id' => :'reference_id',
        :'from_state' => :'from_state',
        :'to_state' => :'to_state',
        :'location_id' => :'location_id',
        :'catalog_object_id' => :'catalog_object_id',
        :'catalog_object_type' => :'catalog_object_type',
        :'quantity' => :'quantity',
        :'total_price_money' => :'total_price_money',
        :'occurred_at' => :'occurred_at',
        :'created_at' => :'created_at',
        :'source' => :'source',
        :'employee_id' => :'employee_id',
        :'transaction_id' => :'transaction_id',
        :'refund_id' => :'refund_id',
        :'purchase_order_id' => :'purchase_order_id',
        :'goods_receipt_id' => :'goods_receipt_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'reference_id' => :'String',
        :'from_state' => :'String',
        :'to_state' => :'String',
        :'location_id' => :'String',
        :'catalog_object_id' => :'String',
        :'catalog_object_type' => :'String',
        :'quantity' => :'String',
        :'total_price_money' => :'Money',
        :'occurred_at' => :'String',
        :'created_at' => :'String',
        :'source' => :'SourceApplication',
        :'employee_id' => :'String',
        :'transaction_id' => :'String',
        :'refund_id' => :'String',
        :'purchase_order_id' => :'String',
        :'goods_receipt_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.has_key?(:'from_state')
        self.from_state = attributes[:'from_state']
      end

      if attributes.has_key?(:'to_state')
        self.to_state = attributes[:'to_state']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'catalog_object_id')
        self.catalog_object_id = attributes[:'catalog_object_id']
      end

      if attributes.has_key?(:'catalog_object_type')
        self.catalog_object_type = attributes[:'catalog_object_type']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'total_price_money')
        self.total_price_money = attributes[:'total_price_money']
      end

      if attributes.has_key?(:'occurred_at')
        self.occurred_at = attributes[:'occurred_at']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.has_key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.has_key?(:'refund_id')
        self.refund_id = attributes[:'refund_id']
      end

      if attributes.has_key?(:'purchase_order_id')
        self.purchase_order_id = attributes[:'purchase_order_id']
      end

      if attributes.has_key?(:'goods_receipt_id')
        self.goods_receipt_id = attributes[:'goods_receipt_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      from_state_validator = EnumAttributeValidator.new('String', ["CUSTOM", "IN_STOCK", "SOLD", "RETURNED_BY_CUSTOMER", "RESERVED_FOR_SALE", "SOLD_ONLINE", "ORDERED_FROM_VENDOR", "RECEIVED_FROM_VENDOR", "IN_TRANSIT_TO", "NONE", "WASTE", "UNLINKED_RETURN"])
      return false unless from_state_validator.valid?(@from_state)
      to_state_validator = EnumAttributeValidator.new('String', ["CUSTOM", "IN_STOCK", "SOLD", "RETURNED_BY_CUSTOMER", "RESERVED_FOR_SALE", "SOLD_ONLINE", "ORDERED_FROM_VENDOR", "RECEIVED_FROM_VENDOR", "IN_TRANSIT_TO", "NONE", "WASTE", "UNLINKED_RETURN"])
      return false unless to_state_validator.valid?(@to_state)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] from_state Object to be assigned
    def from_state=(from_state)
      validator = EnumAttributeValidator.new('String', ["CUSTOM", "IN_STOCK", "SOLD", "RETURNED_BY_CUSTOMER", "RESERVED_FOR_SALE", "SOLD_ONLINE", "ORDERED_FROM_VENDOR", "RECEIVED_FROM_VENDOR", "IN_TRANSIT_TO", "NONE", "WASTE", "UNLINKED_RETURN"])
      unless validator.valid?(from_state)
        fail ArgumentError, "invalid value for 'from_state', must be one of #{validator.allowable_values}."
      end
      @from_state = from_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] to_state Object to be assigned
    def to_state=(to_state)
      validator = EnumAttributeValidator.new('String', ["CUSTOM", "IN_STOCK", "SOLD", "RETURNED_BY_CUSTOMER", "RESERVED_FOR_SALE", "SOLD_ONLINE", "ORDERED_FROM_VENDOR", "RECEIVED_FROM_VENDOR", "IN_TRANSIT_TO", "NONE", "WASTE", "UNLINKED_RETURN"])
      unless validator.valid?(to_state)
        fail ArgumentError, "invalid value for 'to_state', must be one of #{validator.allowable_values}."
      end
      @to_state = to_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          reference_id == o.reference_id &&
          from_state == o.from_state &&
          to_state == o.to_state &&
          location_id == o.location_id &&
          catalog_object_id == o.catalog_object_id &&
          catalog_object_type == o.catalog_object_type &&
          quantity == o.quantity &&
          total_price_money == o.total_price_money &&
          occurred_at == o.occurred_at &&
          created_at == o.created_at &&
          source == o.source &&
          employee_id == o.employee_id &&
          transaction_id == o.transaction_id &&
          refund_id == o.refund_id &&
          purchase_order_id == o.purchase_order_id &&
          goods_receipt_id == o.goods_receipt_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, reference_id, from_state, to_state, location_id, catalog_object_id, catalog_object_type, quantity, total_price_money, occurred_at, created_at, source, employee_id, transaction_id, refund_id, purchase_order_id, goods_receipt_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SquareConnect.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
