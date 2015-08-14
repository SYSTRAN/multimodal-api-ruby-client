module MultimodalApiClient
  # 
  class SpeechAlignResponse < BaseObject
    attr_accessor :channels, :segments
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of channels
        :'channels' => :'channels',
        
        # Array of segments
        :'segments' => :'segments'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'channels' => :'array[SpeechChannel]',
        :'segments' => :'array[SpeechAlignSegment]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'channels']
        if (value = attributes[:'channels']).is_a?(Array)
          @channels = value
        end
      end
      
      if attributes[:'segments']
        if (value = attributes[:'segments']).is_a?(Array)
          @segments = value
        end
      end
      
    end
  end
end
