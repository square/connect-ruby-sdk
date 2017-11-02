=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents an additional recipient (other than the merchant) entitled to a portion of the tender. Support is currently limited to USD, CAD and GBP currencies
  class ChargeRequestAdditionalRecipient
    # The location ID for a recipient (other than the merchant) receiving a portion of the tender.
    attr_accessor :location_id

    # The description of the additional recipient.
    attr_accessor :description

    # The amount of money distributed to the recipient.
    attr_accessor :amount_money


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'location_id' => :'location_id',
        :'description' => :'description',
        :'amount_money' => :'amount_money'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'location_id' => :'String',
        :'description' => :'String',
        :'amount_money' => :'Money'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'amount_money')
        self.amount_money = attributes[:'amount_money']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @location_id.nil?
        invalid_properties.push("invalid value for 'location_id', location_id cannot be nil.")
      end

      if @location_id.to_s.length > 50
        invalid_properties.push("invalid value for 'location_id', the character length must be smaller than or equal to 50.")
      end

      if @location_id.to_s.length < 1
        invalid_properties.push("invalid value for 'location_id', the character length must be great than or equal to 1.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @description.to_s.length > 100
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 100.")
      end

      if @description.to_s.length < 1
        invalid_properties.push("invalid value for 'description', the character length must be great than or equal to 1.")
      end

      if @amount_money.nil?
        invalid_properties.push("invalid value for 'amount_money', amount_money cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @location_id.nil?
      return false if @location_id.to_s.length > 50
      return false if @location_id.to_s.length < 1
      return false if @description.nil?
      return false if @description.to_s.length > 100
      return false if @description.to_s.length < 1
      return false if @amount_money.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] location_id Value to be assigned
    def location_id=(location_id)
      if location_id.nil?
        fail ArgumentError, "location_id cannot be nil"
      end

      if location_id.to_s.length > 50
        fail ArgumentError, "invalid value for 'location_id', the character length must be smaller than or equal to 50."
      end

      if location_id.to_s.length < 1
        fail ArgumentError, "invalid value for 'location_id', the character length must be great than or equal to 1."
      end

      @location_id = location_id
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, "description cannot be nil"
      end

      if description.to_s.length > 100
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 100."
      end

      if description.to_s.length < 1
        fail ArgumentError, "invalid value for 'description', the character length must be great than or equal to 1."
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          location_id == o.location_id &&
          description == o.description &&
          amount_money == o.amount_money
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [location_id, description, amount_money].hash
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