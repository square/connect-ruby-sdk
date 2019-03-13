=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # A record of the hourly rate, start, and end times for a single work shift  for an employee. May include a record of the start and end times for breaks  taken during the shift.
  class Shift
    # UUID for this object
    attr_accessor :id

    # The ID of the employee this shift belongs to.
    attr_accessor :employee_id

    # The ID of the location this shift occurred at. Should be based on where the employee clocked in.
    attr_accessor :location_id

    # Read-only convenience value that is calculated from the location based on `location_id`. Format: the IANA Timezone Database identifier for the location timezone.
    attr_accessor :timezone

    # RFC 3339; shifted to location timezone + offset. Precision up to the minute is respected; seconds are truncated.
    attr_accessor :start_at

    # RFC 3339; shifted to timezone + offset. Precision up to the minute is respected; seconds are truncated. The `end_at` minute is not counted when the shift length is calculated. For example, a shift from `00:00` to `08:01` is considered an 8 hour shift (midnight to 8am).
    attr_accessor :end_at

    # Job and pay related information.
    attr_accessor :wage

    # A list of any paid or unpaid breaks that were taken during this shift.
    attr_accessor :breaks

    # Describes working state of the current `Shift`.
    attr_accessor :status

    # Used for resolving concurrency issues; request will fail if version provided does not match server version at time of request. If not provided, Square executes a blind write; potentially overwriting data from another write.
    attr_accessor :version

    # A read-only timestamp in RFC 3339 format; presented in UTC.
    attr_accessor :created_at

    # A read-only timestamp in RFC 3339 format; presented in UTC.
    attr_accessor :updated_at

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
        :'employee_id' => :'employee_id',
        :'location_id' => :'location_id',
        :'timezone' => :'timezone',
        :'start_at' => :'start_at',
        :'end_at' => :'end_at',
        :'wage' => :'wage',
        :'breaks' => :'breaks',
        :'status' => :'status',
        :'version' => :'version',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'employee_id' => :'String',
        :'location_id' => :'String',
        :'timezone' => :'String',
        :'start_at' => :'String',
        :'end_at' => :'String',
        :'wage' => :'ShiftWage',
        :'breaks' => :'Array<ModelBreak>',
        :'status' => :'String',
        :'version' => :'Integer',
        :'created_at' => :'String',
        :'updated_at' => :'String'
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

      if attributes.has_key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'start_at')
        self.start_at = attributes[:'start_at']
      end

      if attributes.has_key?(:'end_at')
        self.end_at = attributes[:'end_at']
      end

      if attributes.has_key?(:'wage')
        self.wage = attributes[:'wage']
      end

      if attributes.has_key?(:'breaks')
        if (value = attributes[:'breaks']).is_a?(Array)
          self.breaks = value
        end
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@id.nil? && @id.to_s.length > 255
        invalid_properties.push("invalid value for 'id', the character length must be smaller than or equal to 255.")
      end

      if @employee_id.nil?
        invalid_properties.push("invalid value for 'employee_id', employee_id cannot be nil.")
      end

      if @employee_id.to_s.length < 1
        invalid_properties.push("invalid value for 'employee_id', the character length must be great than or equal to 1.")
      end

      if @start_at.nil?
        invalid_properties.push("invalid value for 'start_at', start_at cannot be nil.")
      end

      if @start_at.to_s.length < 1
        invalid_properties.push("invalid value for 'start_at', the character length must be great than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id.to_s.length > 255
      return false if @employee_id.nil?
      return false if @employee_id.to_s.length < 1
      return false if @start_at.nil?
      return false if @start_at.to_s.length < 1
      status_validator = EnumAttributeValidator.new('String', ["OPEN", "CLOSED"])
      return false unless status_validator.valid?(@status)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)

      if !id.nil? && id.to_s.length > 255
        fail ArgumentError, "invalid value for 'id', the character length must be smaller than or equal to 255."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] employee_id Value to be assigned
    def employee_id=(employee_id)
      if employee_id.nil?
        fail ArgumentError, "employee_id cannot be nil"
      end

      if employee_id.to_s.length < 1
        fail ArgumentError, "invalid value for 'employee_id', the character length must be great than or equal to 1."
      end

      @employee_id = employee_id
    end

    # Custom attribute writer method with validation
    # @param [Object] start_at Value to be assigned
    def start_at=(start_at)
      if start_at.nil?
        fail ArgumentError, "start_at cannot be nil"
      end

      if start_at.to_s.length < 1
        fail ArgumentError, "invalid value for 'start_at', the character length must be great than or equal to 1."
      end

      @start_at = start_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["OPEN", "CLOSED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          employee_id == o.employee_id &&
          location_id == o.location_id &&
          timezone == o.timezone &&
          start_at == o.start_at &&
          end_at == o.end_at &&
          wage == o.wage &&
          breaks == o.breaks &&
          status == o.status &&
          version == o.version &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, employee_id, location_id, timezone, start_at, end_at, wage, breaks, status, version, created_at, updated_at].hash
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
