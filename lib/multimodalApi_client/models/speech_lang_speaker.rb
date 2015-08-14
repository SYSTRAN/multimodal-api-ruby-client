module MultimodalApiClient
  # 
  class SpeechLangSpeaker < BaseObject
    attr_accessor :id, :channel, :duration, :gender, :lang, :lang_confidence
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Speaker id
        :'id' => :'id',
        
        # Channel id
        :'channel' => :'channel',
        
        # Speech duration (in seconds)
        :'duration' => :'duration',
        
        # Gender
        :'gender' => :'gender',
        
        # Speaker detected language ([details](#description_langage_code_values))
        :'lang' => :'lang',
        
        # Confidence for the detected language
        :'lang_confidence' => :'langConfidence'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'string',
        :'channel' => :'int',
        :'duration' => :'double',
        :'gender' => :'string',
        :'lang' => :'string',
        :'lang_confidence' => :'double'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'channel']
        @channel = attributes[:'channel']
      end
      
      if attributes[:'duration']
        @duration = attributes[:'duration']
      end
      
      if attributes[:'gender']
        @gender = attributes[:'gender']
      end
      
      if attributes[:'lang']
        @lang = attributes[:'lang']
      end
      
      if attributes[:'langConfidence']
        @lang_confidence = attributes[:'langConfidence']
      end
      
    end
  end
end
