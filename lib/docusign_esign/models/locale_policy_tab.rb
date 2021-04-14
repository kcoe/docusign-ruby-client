=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class LocalePolicyTab
    # 
    attr_accessor :address_format

    # 
    attr_accessor :calendar_type

    # 
    attr_accessor :culture_name

    # 
    attr_accessor :currency_code

    # 
    attr_accessor :currency_negative_format

    # 
    attr_accessor :currency_positive_format

    # 
    attr_accessor :custom_date_format

    # 
    attr_accessor :custom_time_format

    # 
    attr_accessor :date_format

    # 
    attr_accessor :initial_format

    # 
    attr_accessor :name_format

    # 
    attr_accessor :time_format

    # 
    attr_accessor :time_zone

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address_format' => :'addressFormat',
        :'calendar_type' => :'calendarType',
        :'culture_name' => :'cultureName',
        :'currency_code' => :'currencyCode',
        :'currency_negative_format' => :'currencyNegativeFormat',
        :'currency_positive_format' => :'currencyPositiveFormat',
        :'custom_date_format' => :'customDateFormat',
        :'custom_time_format' => :'customTimeFormat',
        :'date_format' => :'dateFormat',
        :'initial_format' => :'initialFormat',
        :'name_format' => :'nameFormat',
        :'time_format' => :'timeFormat',
        :'time_zone' => :'timeZone'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address_format' => :'String',
        :'calendar_type' => :'String',
        :'culture_name' => :'String',
        :'currency_code' => :'String',
        :'currency_negative_format' => :'String',
        :'currency_positive_format' => :'String',
        :'custom_date_format' => :'String',
        :'custom_time_format' => :'String',
        :'date_format' => :'String',
        :'initial_format' => :'String',
        :'name_format' => :'String',
        :'time_format' => :'String',
        :'time_zone' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'addressFormat')
        self.address_format = attributes[:'addressFormat']
      end

      if attributes.has_key?(:'calendarType')
        self.calendar_type = attributes[:'calendarType']
      end

      if attributes.has_key?(:'cultureName')
        self.culture_name = attributes[:'cultureName']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'currencyNegativeFormat')
        self.currency_negative_format = attributes[:'currencyNegativeFormat']
      end

      if attributes.has_key?(:'currencyPositiveFormat')
        self.currency_positive_format = attributes[:'currencyPositiveFormat']
      end

      if attributes.has_key?(:'customDateFormat')
        self.custom_date_format = attributes[:'customDateFormat']
      end

      if attributes.has_key?(:'customTimeFormat')
        self.custom_time_format = attributes[:'customTimeFormat']
      end

      if attributes.has_key?(:'dateFormat')
        self.date_format = attributes[:'dateFormat']
      end

      if attributes.has_key?(:'initialFormat')
        self.initial_format = attributes[:'initialFormat']
      end

      if attributes.has_key?(:'nameFormat')
        self.name_format = attributes[:'nameFormat']
      end

      if attributes.has_key?(:'timeFormat')
        self.time_format = attributes[:'timeFormat']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address_format == o.address_format &&
          calendar_type == o.calendar_type &&
          culture_name == o.culture_name &&
          currency_code == o.currency_code &&
          currency_negative_format == o.currency_negative_format &&
          currency_positive_format == o.currency_positive_format &&
          custom_date_format == o.custom_date_format &&
          custom_time_format == o.custom_time_format &&
          date_format == o.date_format &&
          initial_format == o.initial_format &&
          name_format == o.name_format &&
          time_format == o.time_format &&
          time_zone == o.time_zone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address_format, calendar_type, culture_name, currency_code, currency_negative_format, currency_positive_format, custom_date_format, custom_time_format, date_format, initial_format, name_format, time_format, time_zone].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = DocuSign_eSign.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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
