module MultimodalApiClient
  # 
  class SpeechSegment < BaseObject
    attr_accessor :channel, :speaker, :speaker_confidence, :start, :_end
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Channel id
        :'channel' => :'channel',
        
        # Speaker id
        :'speaker' => :'speaker',
        
        # Confidence for the detected speaker
        :'speaker_confidence' => :'speakerConfidence',
        
        # Start time (in seconds)
        :'start' => :'start',
        
        # End time (in seconds)
        :'_end' => :'end'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'channel' => :'int',
        :'speaker' => :'string',
        :'speaker_confidence' => :'double',
        :'start' => :'double',
        :'_end' => :'double'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'channel']
        @channel = attributes[:'channel']
      end
      
      if attributes[:'speaker']
        @speaker = attributes[:'speaker']
      end
      
      if attributes[:'speakerConfidence']
        @speaker_confidence = attributes[:'speakerConfidence']
      end
      
      if attributes[:'start']
        @start = attributes[:'start']
      end
      
      if attributes[:'end']
        @_end = attributes[:'end']
      end
      
    end
  end
end
