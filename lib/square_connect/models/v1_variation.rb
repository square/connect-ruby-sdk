=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # V1Variation
  class V1Variation
    # The item variation's unique ID.
    attr_accessor :id

    # The item variation's name.
    attr_accessor :name

    # The ID of the variation's associated item.
    attr_accessor :item_id

    # Indicates the variation's list position when displayed in Square Register and the merchant dashboard. If more than one variation for the same item has the same ordinal value, those variations are displayed in alphabetical order
    attr_accessor :ordinal

    # Indicates whether the item variation's price is fixed or determined at the time of sale. See [V1VariationPricingType](#type-v1variationpricingtype) for possible values
    attr_accessor :pricing_type

    # The item variation's price, if any.
    attr_accessor :price_money

    # The item variation's SKU, if any.
    attr_accessor :sku

    # If true, inventory tracking is active for the variation.
    attr_accessor :track_inventory

    # Indicates whether the item variation displays an alert when its inventory quantity is less than or equal to its inventory_alert_threshold. See [V1VariationInventoryAlertType](#type-v1variationinventoryalerttype) for possible values
    attr_accessor :inventory_alert_type

    # If the inventory quantity for the variation is less than or equal to this value and inventory_alert_type is LOW_QUANTITY, the variation displays an alert in the merchant dashboard.
    attr_accessor :inventory_alert_threshold

    # Arbitrary metadata associated with the variation. Cannot exceed 255 characters.
    attr_accessor :user_data

    # The ID of the CatalogObject in the Connect v2 API. Objects that are shared across multiple locations share the same v2 ID.
    attr_accessor :v2_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'item_id' => :'item_id',
        :'ordinal' => :'ordinal',
        :'pricing_type' => :'pricing_type',
        :'price_money' => :'price_money',
        :'sku' => :'sku',
        :'track_inventory' => :'track_inventory',
        :'inventory_alert_type' => :'inventory_alert_type',
        :'inventory_alert_threshold' => :'inventory_alert_threshold',
        :'user_data' => :'user_data',
        :'v2_id' => :'v2_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'item_id' => :'String',
        :'ordinal' => :'Integer',
        :'pricing_type' => :'String',
        :'price_money' => :'V1Money',
        :'sku' => :'String',
        :'track_inventory' => :'BOOLEAN',
        :'inventory_alert_type' => :'String',
        :'inventory_alert_threshold' => :'Integer',
        :'user_data' => :'String',
        :'v2_id' => :'String'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'item_id')
        self.item_id = attributes[:'item_id']
      end

      if attributes.has_key?(:'ordinal')
        self.ordinal = attributes[:'ordinal']
      end

      if attributes.has_key?(:'pricing_type')
        self.pricing_type = attributes[:'pricing_type']
      end

      if attributes.has_key?(:'price_money')
        self.price_money = attributes[:'price_money']
      end

      if attributes.has_key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.has_key?(:'track_inventory')
        self.track_inventory = attributes[:'track_inventory']
      end

      if attributes.has_key?(:'inventory_alert_type')
        self.inventory_alert_type = attributes[:'inventory_alert_type']
      end

      if attributes.has_key?(:'inventory_alert_threshold')
        self.inventory_alert_threshold = attributes[:'inventory_alert_threshold']
      end

      if attributes.has_key?(:'user_data')
        self.user_data = attributes[:'user_data']
      end

      if attributes.has_key?(:'v2_id')
        self.v2_id = attributes[:'v2_id']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          item_id == o.item_id &&
          ordinal == o.ordinal &&
          pricing_type == o.pricing_type &&
          price_money == o.price_money &&
          sku == o.sku &&
          track_inventory == o.track_inventory &&
          inventory_alert_type == o.inventory_alert_type &&
          inventory_alert_threshold == o.inventory_alert_threshold &&
          user_data == o.user_data &&
          v2_id == o.v2_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, item_id, ordinal, pricing_type, price_money, sku, track_inventory, inventory_alert_type, inventory_alert_threshold, user_data, v2_id].hash
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
