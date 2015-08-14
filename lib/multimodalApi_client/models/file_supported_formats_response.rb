module MultimodalApiClient
  # 
  class FileSupportedFormatsResponse < BaseObject
    attr_accessor :formats
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # List of supported formats
        :'formats' => :'formats'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'formats' => :'array[FileFormat]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'formats']
        if (value = attributes[:'formats']).is_a?(Array)
          @formats = value
        end
      end
      
    end
  end
end
