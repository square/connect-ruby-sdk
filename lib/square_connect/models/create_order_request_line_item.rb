=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents a line item to include in an order. Each line item describes a different product to purchase, with its own quantity and price details.  Line items can either reference objects from the merchant's catalog, or can alternatively specify a name and price instead.
  class CreateOrderRequestLineItem
    # Only used for ad hoc line items. The name of the line item. This value cannot exceed 500 characters.  Do not provide a value for this field if you provide values in catalog_object_id.
    attr_accessor :name

    # The quantity to purchase, as a string representation of a number.  This string must have a positive integer value.
    attr_accessor :quantity

    # Only used for ad hoc line items. The base price for a single unit of the line item's associated variation.  Do not provide a value for this field if you provide a value for the `catalog_object_id`.
    attr_accessor :base_price_money

    # Only used for ad hoc line items. The variation name of the line item. This value cannot exceed 255 characters.  If this value is not set for an ad hoc line item, the default value of `Regular` is used.  Do not provide a value for this field if you provide a value for the `catalog_object_id`.
    attr_accessor :variation_name

    # The note of the line item. This value cannot exceed 50 characters.
    attr_accessor :note

    # Only used for Catalog line items. The catalog object ID for an existing [CatalogItemVariation](#type-catalogitemvariation).  Do not provide a value for this field if you provide a value for `name` and `base_price_money`.
    attr_accessor :catalog_object_id

    # Only used for Catalog line items. The modifiers to include on the line item.
    attr_accessor :modifiers

    # The taxes to include on the line item.
    attr_accessor :taxes

    # The discounts to include on the line item.
    attr_accessor :discounts


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'quantity' => :'quantity',
        :'base_price_money' => :'base_price_money',
        :'variation_name' => :'variation_name',
        :'note' => :'note',
        :'catalog_object_id' => :'catalog_object_id',
        :'modifiers' => :'modifiers',
        :'taxes' => :'taxes',
        :'discounts' => :'discounts'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'quantity' => :'String',
        :'base_price_money' => :'Money',
        :'variation_name' => :'String',
        :'note' => :'String',
        :'catalog_object_id' => :'String',
        :'modifiers' => :'Array<CreateOrderRequestModifier>',
        :'taxes' => :'Array<CreateOrderRequestTax>',
        :'discounts' => :'Array<CreateOrderRequestDiscount>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'base_price_money')
        self.base_price_money = attributes[:'base_price_money']
      end

      if attributes.has_key?(:'variation_name')
        self.variation_name = attributes[:'variation_name']
      end

      if attributes.has_key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.has_key?(:'catalog_object_id')
        self.catalog_object_id = attributes[:'catalog_object_id']
      end

      if attributes.has_key?(:'modifiers')
        if (value = attributes[:'modifiers']).is_a?(Array)
          self.modifiers = value
        end
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'discounts')
        if (value = attributes[:'discounts']).is_a?(Array)
          self.discounts = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 500
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 500.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @quantity.to_s.length > 5
        invalid_properties.push("invalid value for 'quantity', the character length must be smaller than or equal to 5.")
      end

      if @quantity.to_s.length < 1
        invalid_properties.push("invalid value for 'quantity', the character length must be great than or equal to 1.")
      end

      if !@variation_name.nil? && @variation_name.to_s.length > 255
        invalid_properties.push("invalid value for 'variation_name', the character length must be smaller than or equal to 255.")
      end

      if !@note.nil? && @note.to_s.length > 50
        invalid_properties.push("invalid value for 'note', the character length must be smaller than or equal to 50.")
      end

      if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
        invalid_properties.push("invalid value for 'catalog_object_id', the character length must be smaller than or equal to 192.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 500
      return false if @quantity.nil?
      return false if @quantity.to_s.length > 5
      return false if @quantity.to_s.length < 1
      return false if !@variation_name.nil? && @variation_name.to_s.length > 255
      return false if !@note.nil? && @note.to_s.length > 50
      return false if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 500
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 500."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if quantity.nil?
        fail ArgumentError, "quantity cannot be nil"
      end

      if quantity.to_s.length > 5
        fail ArgumentError, "invalid value for 'quantity', the character length must be smaller than or equal to 5."
      end

      if quantity.to_s.length < 1
        fail ArgumentError, "invalid value for 'quantity', the character length must be great than or equal to 1."
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] variation_name Value to be assigned
    def variation_name=(variation_name)

      if !variation_name.nil? && variation_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'variation_name', the character length must be smaller than or equal to 255."
      end

      @variation_name = variation_name
    end

    # Custom attribute writer method with validation
    # @param [Object] note Value to be assigned
    def note=(note)

      if !note.nil? && note.to_s.length > 50
        fail ArgumentError, "invalid value for 'note', the character length must be smaller than or equal to 50."
      end

      @note = note
    end

    # Custom attribute writer method with validation
    # @param [Object] catalog_object_id Value to be assigned
    def catalog_object_id=(catalog_object_id)

      if !catalog_object_id.nil? && catalog_object_id.to_s.length > 192
        fail ArgumentError, "invalid value for 'catalog_object_id', the character length must be smaller than or equal to 192."
      end

      @catalog_object_id = catalog_object_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          quantity == o.quantity &&
          base_price_money == o.base_price_money &&
          variation_name == o.variation_name &&
          note == o.note &&
          catalog_object_id == o.catalog_object_id &&
          modifiers == o.modifiers &&
          taxes == o.taxes &&
          discounts == o.discounts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, quantity, base_price_money, variation_name, note, catalog_object_id, modifiers, taxes, discounts].hash
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
