=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents a discount that applies to one or more line items in an order.  Fixed-amount, order-level discounts are distributed across all non-zero line item totals. The amount distributed to each line item is relative to that item’s contribution to the order subtotal.
  class OrderLineItemDiscount
    # Unique ID that identifies the discount only within this order.  This field is read-only.
    attr_accessor :uid

    # The catalog object id referencing [CatalogDiscount](#type-catalogdiscount).
    attr_accessor :catalog_object_id

    # The discount's name.
    attr_accessor :name

    # The type of the discount. If it is created by API, it would be either `FIXED_PERCENTAGE` or `FIXED_AMOUNT`.  VARIABLE_* is not supported in API because the order is created at the time of sale and either percentage or amount has to be specified. See [OrderLineItemDiscountType](#type-orderlineitemdiscounttype) for possible values
    attr_accessor :type

    # The percentage of the discount, as a string representation of a decimal number. A value of `7.25` corresponds to a percentage of 7.25%.  The percentage won't be set for an amount-based discount.
    attr_accessor :percentage

    # The total monetary amount of the applicable discount. If it is at order level, it is the value of the order level discount. If it is at line item level, it is the value of the line item level discount.  The amount_money won't be set for a percentage-based discount.
    attr_accessor :amount_money

    # The amount of discount actually applied to this line item.  Represents the amount of money applied to a line item as a discount When an amount-based discount is at order-level, this value is different from `amount_money` because the discount is distributed across the line items.
    attr_accessor :applied_money

    # Indicates the level at which the discount applies. This field is set by the server. If set in a CreateOrder request, it will be ignored on write. See [OrderLineItemDiscountScope](#type-orderlineitemdiscountscope) for possible values
    attr_accessor :scope


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'uid' => :'uid',
        :'catalog_object_id' => :'catalog_object_id',
        :'name' => :'name',
        :'type' => :'type',
        :'percentage' => :'percentage',
        :'amount_money' => :'amount_money',
        :'applied_money' => :'applied_money',
        :'scope' => :'scope'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'uid' => :'String',
        :'catalog_object_id' => :'String',
        :'name' => :'String',
        :'type' => :'String',
        :'percentage' => :'String',
        :'amount_money' => :'Money',
        :'applied_money' => :'Money',
        :'scope' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'uid')
        self.uid = attributes[:'uid']
      end

      if attributes.has_key?(:'catalog_object_id')
        self.catalog_object_id = attributes[:'catalog_object_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'percentage')
        self.percentage = attributes[:'percentage']
      end

      if attributes.has_key?(:'amount_money')
        self.amount_money = attributes[:'amount_money']
      end

      if attributes.has_key?(:'applied_money')
        self.applied_money = attributes[:'applied_money']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@uid.nil? && @uid.to_s.length > 60
        invalid_properties.push("invalid value for 'uid', the character length must be smaller than or equal to 60.")
      end

      if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
        invalid_properties.push("invalid value for 'catalog_object_id', the character length must be smaller than or equal to 192.")
      end

      if !@name.nil? && @name.to_s.length > 255
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 255.")
      end

      if !@percentage.nil? && @percentage.to_s.length > 10
        invalid_properties.push("invalid value for 'percentage', the character length must be smaller than or equal to 10.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@uid.nil? && @uid.to_s.length > 60
      return false if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@percentage.nil? && @percentage.to_s.length > 10
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] uid Value to be assigned
    def uid=(uid)

      if !uid.nil? && uid.to_s.length > 60
        fail ArgumentError, "invalid value for 'uid', the character length must be smaller than or equal to 60."
      end

      @uid = uid
    end

    # Custom attribute writer method with validation
    # @param [Object] catalog_object_id Value to be assigned
    def catalog_object_id=(catalog_object_id)

      if !catalog_object_id.nil? && catalog_object_id.to_s.length > 192
        fail ArgumentError, "invalid value for 'catalog_object_id', the character length must be smaller than or equal to 192."
      end

      @catalog_object_id = catalog_object_id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 255."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] percentage Value to be assigned
    def percentage=(percentage)

      if !percentage.nil? && percentage.to_s.length > 10
        fail ArgumentError, "invalid value for 'percentage', the character length must be smaller than or equal to 10."
      end

      @percentage = percentage
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          uid == o.uid &&
          catalog_object_id == o.catalog_object_id &&
          name == o.name &&
          type == o.type &&
          percentage == o.percentage &&
          amount_money == o.amount_money &&
          applied_money == o.applied_money &&
          scope == o.scope
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [uid, catalog_object_id, name, type, percentage, amount_money, applied_money, scope].hash
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
