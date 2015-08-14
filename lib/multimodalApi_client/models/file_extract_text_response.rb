module MultimodalApiClient
  # 
  class FileExtractTextResponse < BaseObject
    attr_accessor :text, :format
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Text extracted from the input
        :'text' => :'text',
        
        # Format of the input
        :'format' => :'format'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'text' => :'string',
        :'format' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'text']
        @text = attributes[:'text']
      end
      
      if attributes[:'format']
        @format = attributes[:'format']
      end
      
    end
  end
end
