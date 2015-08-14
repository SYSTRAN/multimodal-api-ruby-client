module MultimodalApiClient
  # 
  class SpeechChannel < BaseObject
    attr_accessor :id, :signal_duration, :speech_duration
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Channel id
        :'id' => :'id',
        
        # Signal duration (in seconds)
        :'signal_duration' => :'signalDuration',
        
        # Speech duration (in seconds)
        :'speech_duration' => :'speechDuration'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'int',
        :'signal_duration' => :'double',
        :'speech_duration' => :'double'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'signalDuration']
        @signal_duration = attributes[:'signalDuration']
      end
      
      if attributes[:'speechDuration']
        @speech_duration = attributes[:'speechDuration']
      end
      
    end
  end
end
