module MultimodalApiClient
  # 
  class SpeechWord < BaseObject
    attr_accessor :start, :duration, :confidence, :text
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Start time (in seconds)
        :'start' => :'start',
        
        # Duration (in seconds)
        :'duration' => :'duration',
        
        # Confidence
        :'confidence' => :'confidence',
        
        # Word text
        :'text' => :'text'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'start' => :'double',
        :'duration' => :'double',
        :'confidence' => :'double',
        :'text' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'start']
        @start = attributes[:'start']
      end
      
      if attributes[:'duration']
        @duration = attributes[:'duration']
      end
      
      if attributes[:'confidence']
        @confidence = attributes[:'confidence']
      end
      
      if attributes[:'text']
        @text = attributes[:'text']
      end
      
    end
  end
end
