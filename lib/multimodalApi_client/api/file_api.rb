require "uri"

module MultimodalApiClient
  class FileApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Extract text from a file
    # Extract text from a file.\n
    # @param input_file Input File
    # @param [Hash] opts the optional parameters
    # @option opts [string] :lang Language code of the input ([details](#description_langage_code_values)) or `auto` for automatic detection
    # @option opts [string] :format Format of the input file.\n\nValid values are the mimetypes returned by the supportedFormats service.\n
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [FileExtractTextResponse]
    def self.multimodal_file_extract_text_get(input_file, opts = {})
      
      # verify the required parameter 'input_file' is set
      raise "Missing the required parameter 'input_file' when calling multimodal_file_extract_text_get" if input_file.nil?
      

      # resource path
      path = "/multimodal/file/extract/text".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'lang'] = opts[:'lang'] if opts[:'lang']
      query_params[:'format'] = opts[:'format'] if opts[:'format']
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded', '*/*']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["inputFile"] = input_file

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = FileExtractTextResponse.new() and obj.build_from_hash(response)
    end

    # Supported file formats
    # Get a list of supported file formats.\n
    # @param [Hash] opts the optional parameters
    # @option opts [int] :profile Profile id\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [FileSupportedFormatsResponse]
    def self.multimodal_file_supported_formats_get(opts = {})
      

      # resource path
      path = "/multimodal/file/supportedFormats".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'profile'] = opts[:'profile'] if opts[:'profile']
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
      obj = FileSupportedFormatsResponse.new() and obj.build_from_hash(response)
    end
  end
end
