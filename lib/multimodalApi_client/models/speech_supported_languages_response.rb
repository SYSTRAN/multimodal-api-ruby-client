module MultimodalApiClient
  # 
  class SpeechSupportedLanguagesResponse < BaseObject
    attr_accessor :languages
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of supported languages
        :'languages' => :'languages'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'languages' => :'array[string]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'languages']
        if (value = attributes[:'languages']).is_a?(Array)
          @languages = value
        end
      end
      
    end
  end
end
