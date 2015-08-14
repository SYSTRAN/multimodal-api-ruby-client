module MultimodalApiClient
  # 
  class SpeechAlignSegment < BaseObject
    attr_accessor :channel, :start, :_end, :lang, :text_confidence, :words
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Channel id
        :'channel' => :'channel',
        
        # Start time (in seconds)
        :'start' => :'start',
        
        # End time (in seconds)
        :'_end' => :'end',
        
        # Detected language ([details](#description_langage_code_values))
        :'lang' => :'lang',
        
        # Confidence for the text
        :'text_confidence' => :'textConfidence',
        
        # Array of words
        :'words' => :'words'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'channel' => :'int',
        :'start' => :'double',
        :'_end' => :'double',
        :'lang' => :'string',
        :'text_confidence' => :'double',
        :'words' => :'array[SpeechWord]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'channel']
        @channel = attributes[:'channel']
      end
      
      if attributes[:'start']
        @start = attributes[:'start']
      end
      
      if attributes[:'end']
        @_end = attributes[:'end']
      end
      
      if attributes[:'lang']
        @lang = attributes[:'lang']
      end
      
      if attributes[:'textConfidence']
        @text_confidence = attributes[:'textConfidence']
      end
      
      if attributes[:'words']
        if (value = attributes[:'words']).is_a?(Array)
          @words = value
        end
      end
      
    end
  end
end
