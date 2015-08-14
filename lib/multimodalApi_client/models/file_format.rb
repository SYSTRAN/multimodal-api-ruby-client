module MultimodalApiClient
  # 
  class FileFormat < BaseObject
    attr_accessor :mimetype, :name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Mimetype
        :'mimetype' => :'mimetype',
        
        # Friendly Name
        :'name' => :'name'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'mimetype' => :'string',
        :'name' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'mimetype']
        @mimetype = attributes[:'mimetype']
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
    end
  end
end
