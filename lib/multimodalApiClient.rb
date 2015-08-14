# Swagger common files
require 'multimodalApi_client/monkey'
require 'multimodalApi_client/swagger'
require 'multimodalApi_client/swagger/configuration'
require 'multimodalApi_client/swagger/request'
require 'multimodalApi_client/swagger/response'
require 'multimodalApi_client/swagger/version'

# Models
require 'multimodalApi_client/models/base_object'
require 'multimodalApi_client/models/speech_channel'
require 'multimodalApi_client/models/speech_speaker'
require 'multimodalApi_client/models/speech_lang_speaker'
require 'multimodalApi_client/models/speech_transcribe_speaker'
require 'multimodalApi_client/models/speech_word'
require 'multimodalApi_client/models/speech_segment'
require 'multimodalApi_client/models/speech_lang_segment'
require 'multimodalApi_client/models/speech_transcribe_segment'
require 'multimodalApi_client/models/speech_align_segment'
require 'multimodalApi_client/models/speech_detect_language_response'
require 'multimodalApi_client/models/speech_segment_response'
require 'multimodalApi_client/models/speech_align_response'
require 'multimodalApi_client/models/speech_transcribe_response'
require 'multimodalApi_client/models/speech_supported_languages_response'
require 'multimodalApi_client/models/file_extract_text_response'
require 'multimodalApi_client/models/file_format'
require 'multimodalApi_client/models/file_supported_formats_response'

# APIs
require 'multimodalApi_client/api/file_api'
require 'multimodalApi_client/api/speech_api'

module MultimodalApiClient
  # Initialize the default configuration
  Swagger.configuration ||= Swagger::Configuration.new
end
