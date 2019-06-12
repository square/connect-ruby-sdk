=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents a service charge applied to an order.
  class OrderServiceCharge
    # Unique ID that identifies the service charge only within this order.  This field is read-only.
    attr_accessor :uid

    # The name of the service charge.
    attr_accessor :name

    # The catalog object ID referencing the service charge [CatalogObject](#type-catalogobject).
    attr_accessor :catalog_object_id

    # The service charge percentage, as a string representation of a decimal number.  For example, `7.25` indicates 7.25%  Exactly one of `percentage` or `amount_money` should be set.
    attr_accessor :percentage

    # The amount of a non-percentage based service charge.  Exactly one of `percentage` or `amount_money` should be set.
    attr_accessor :amount_money

    # The amount of money applied to the order by the service charge, as calculated by the server.  For fixed-amount service charges, `applied_money` is equal to `amount_money`.  For percentage-based service charges, `applied_money` is the money calculated using the percentage. The `applied_money` field will include any inclusive tax amounts as well.  This field is read-only.
    attr_accessor :applied_money

    # The total amount of money to collect for the service charge.  Note that `total_money` does not equal `applied_money` plus `total_tax_money` if an inclusive tax is applied to the service charge since the inclusive tax amount will be included in both `applied_money` and `total_tax_money`.  This field is read-only.
    attr_accessor :total_money

    # The total amount of tax money to collect for the service charge.  This field is read-only.
    attr_accessor :total_tax_money

    # The calculation phase at which to apply the service charge. See [OrderServiceChargeCalculationPhase](#type-orderservicechargecalculationphase) for possible values
    attr_accessor :calculation_phase

    # Indicates whether the service charge can be taxed. If set to `true`, any order-level taxes will automatically apply to this service charge. Note that service charges calculated in the `TOTAL_PHASE` cannot be marked as taxable.
    attr_accessor :taxable

    # Taxes applied to the service charge. By default, order-level taxes apply to service charges calculated in the `SUBTOTAL_PHASE` if `taxable` is set to `true`.
    attr_accessor :taxes

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
        :'uid' => :'uid',
        :'name' => :'name',
        :'catalog_object_id' => :'catalog_object_id',
        :'percentage' => :'percentage',
        :'amount_money' => :'amount_money',
        :'applied_money' => :'applied_money',
        :'total_money' => :'total_money',
        :'total_tax_money' => :'total_tax_money',
        :'calculation_phase' => :'calculation_phase',
        :'taxable' => :'taxable',
        :'taxes' => :'taxes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'uid' => :'String',
        :'name' => :'String',
        :'catalog_object_id' => :'String',
        :'percentage' => :'String',
        :'amount_money' => :'Money',
        :'applied_money' => :'Money',
        :'total_money' => :'Money',
        :'total_tax_money' => :'Money',
        :'calculation_phase' => :'String',
        :'taxable' => :'BOOLEAN',
        :'taxes' => :'Array<OrderLineItemTax>'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'catalog_object_id')
        self.catalog_object_id = attributes[:'catalog_object_id']
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

      if attributes.has_key?(:'total_money')
        self.total_money = attributes[:'total_money']
      end

      if attributes.has_key?(:'total_tax_money')
        self.total_tax_money = attributes[:'total_tax_money']
      end

      if attributes.has_key?(:'calculation_phase')
        self.calculation_phase = attributes[:'calculation_phase']
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@uid.nil? && @uid.to_s.length > 60
        invalid_properties.push("invalid value for 'uid', the character length must be smaller than or equal to 60.")
      end

      if !@name.nil? && @name.to_s.length > 255
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 255.")
      end

      if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
        invalid_properties.push("invalid value for 'catalog_object_id', the character length must be smaller than or equal to 192.")
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
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
      return false if !@percentage.nil? && @percentage.to_s.length > 10
      calculation_phase_validator = EnumAttributeValidator.new('String', ["SUBTOTAL_PHASE", "TOTAL_PHASE"])
      return false unless calculation_phase_validator.valid?(@calculation_phase)
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
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 255."
      end

      @name = name
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
    # @param [Object] percentage Value to be assigned
    def percentage=(percentage)

      if !percentage.nil? && percentage.to_s.length > 10
        fail ArgumentError, "invalid value for 'percentage', the character length must be smaller than or equal to 10."
      end

      @percentage = percentage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] calculation_phase Object to be assigned
    def calculation_phase=(calculation_phase)
      validator = EnumAttributeValidator.new('String', ["SUBTOTAL_PHASE", "TOTAL_PHASE"])
      unless validator.valid?(calculation_phase)
        fail ArgumentError, "invalid value for 'calculation_phase', must be one of #{validator.allowable_values}."
      end
      @calculation_phase = calculation_phase
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          uid == o.uid &&
          name == o.name &&
          catalog_object_id == o.catalog_object_id &&
          percentage == o.percentage &&
          amount_money == o.amount_money &&
          applied_money == o.applied_money &&
          total_money == o.total_money &&
          total_tax_money == o.total_tax_money &&
          calculation_phase == o.calculation_phase &&
          taxable == o.taxable &&
          taxes == o.taxes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [uid, name, catalog_object_id, percentage, amount_money, applied_money, total_money, total_tax_money, calculation_phase, taxable, taxes].hash
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
