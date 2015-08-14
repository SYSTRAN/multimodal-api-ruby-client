require "uri"

module MultimodalApiClient
  class SpeechApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Align speech
    # Align text and audio files.\n
    # @param audio_file Audio file ([details](#description_audio_files)).\n
    # @param text_file Plain text file, ASCII, ISO-8859 or UTF8 encoded.\n\nThe text should include one sentence or clause per line ending with a punctuation mark.\n
    # @param lang Language code of the input ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [string] :model Model name\n
    # @option opts [string] :sampling Sampling quality of the audio file.\n * high: wide band audio such as radio and TV broadcast (sampling higher or equal to 16KHz)\n * low: telephone data with sampling rates higher or equal to 8KHz. It is highly recommended to not use a bit rate lower than 32Kbps.\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SpeechAlignResponse]
    def self.multimodal_speech_align_get(audio_file, text_file, lang, opts = {})
      
      # verify the required parameter 'audio_file' is set
      raise "Missing the required parameter 'audio_file' when calling multimodal_speech_align_get" if audio_file.nil?
      
      # verify the required parameter 'text_file' is set
      raise "Missing the required parameter 'text_file' when calling multimodal_speech_align_get" if text_file.nil?
      
      # verify the required parameter 'lang' is set
      raise "Missing the required parameter 'lang' when calling multimodal_speech_align_get" if lang.nil?
      

      # resource path
      path = "/multimodal/speech/align".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'lang'] = lang
      query_params[:'model'] = opts[:'model'] if opts[:'model']
      query_params[:'sampling'] = opts[:'sampling'] if opts[:'sampling']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["audioFile"] = audio_file
      form_params["textFile"] = text_file

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = SpeechAlignResponse.new() and obj.build_from_hash(response)
    end

    # Speech language detection
    # Detect languages from an audio file.\n
    # @param audio_file Audio file ([details](#description_audio_files)).\n
    # @param [Hash] opts the optional parameters
    # @option opts [string] :sampling Sampling quality of the audio file.\n * high: wide band audio such as radio and TV broadcast (sampling higher or equal to 16KHz)\n * low: telephone data with sampling rates higher or equal to 8KHz. It is highly recommended to not use a bit rate lower than 32Kbps.\n
    # @option opts [int] :max_speaker Maximum number of speakers. Default 1 for low sampling and infinity for high sampling
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SpeechDetectLanguageResponse]
    def self.multimodal_speech_detect_language_get(audio_file, opts = {})
      
      # verify the required parameter 'audio_file' is set
      raise "Missing the required parameter 'audio_file' when calling multimodal_speech_detect_language_get" if audio_file.nil?
      

      # resource path
      path = "/multimodal/speech/detectLanguage".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'sampling'] = opts[:'sampling'] if opts[:'sampling']
      query_params[:'maxSpeaker'] = opts[:'max_speaker'] if opts[:'max_speaker']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["audioFile"] = audio_file

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = SpeechDetectLanguageResponse.new() and obj.build_from_hash(response)
    end

    # Segment speech
    # Segment an audio file.\n
    # @param audio_file Audio file ([details](#description_audio_files)).\n
    # @param [Hash] opts the optional parameters
    # @option opts [string] :sampling Sampling quality of the audio file.\n * high: wide band audio such as radio and TV broadcast (sampling higher or equal to 16KHz)\n * low: telephone data with sampling rates higher or equal to 8KHz. It is highly recommended to not use a bit rate lower than 32Kbps.\n
    # @option opts [int] :max_speaker Maximum number of speakers. Default 1 for low sampling and infinity for high sampling
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SpeechSegmentResponse]
    def self.multimodal_speech_segment_get(audio_file, opts = {})
      
      # verify the required parameter 'audio_file' is set
      raise "Missing the required parameter 'audio_file' when calling multimodal_speech_segment_get" if audio_file.nil?
      

      # resource path
      path = "/multimodal/speech/segment".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'sampling'] = opts[:'sampling'] if opts[:'sampling']
      query_params[:'maxSpeaker'] = opts[:'max_speaker'] if opts[:'max_speaker']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["audioFile"] = audio_file

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = SpeechSegmentResponse.new() and obj.build_from_hash(response)
    end

    # Supported Languages
    # List of languages in which Speech is supported.\n
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SpeechSupportedLanguagesResponse]
    def self.multimodal_speech_supported_languages_get(opts = {})
      

      # resource path
      path = "/multimodal/speech/supportedLanguages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = SpeechSupportedLanguagesResponse.new() and obj.build_from_hash(response)
    end

    # Transcribe speech
    # Get text from an audio file.\n
    # @param audio_file Audio file ([details](#description_audio_files)).\n
    # @param lang Language code of the input ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [string] :model Model name\n
    # @option opts [string] :sampling Sampling quality of the audio file.\n * high: wide band audio such as radio and TV broadcast (sampling higher or equal to 16KHz)\n * low: telephone data with sampling rates higher or equal to 8KHz. It is highly recommended to not use a bit rate lower than 32Kbps.\n
    # @option opts [int] :max_speaker Maximum number of speakers. Default 1 for low sampling and infinity for high sampling
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [SpeechTranscribeResponse]
    def self.multimodal_speech_transcribe_get(audio_file, lang, opts = {})
      
      # verify the required parameter 'audio_file' is set
      raise "Missing the required parameter 'audio_file' when calling multimodal_speech_transcribe_get" if audio_file.nil?
      
      # verify the required parameter 'lang' is set
      raise "Missing the required parameter 'lang' when calling multimodal_speech_transcribe_get" if lang.nil?
      

      # resource path
      path = "/multimodal/speech/transcribe".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'lang'] = lang
      query_params[:'model'] = opts[:'model'] if opts[:'model']
      query_params[:'sampling'] = opts[:'sampling'] if opts[:'sampling']
      query_params[:'maxSpeaker'] = opts[:'max_speaker'] if opts[:'max_speaker']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["audioFile"] = audio_file

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = SpeechTranscribeResponse.new() and obj.build_from_hash(response)
    end
  end
end
