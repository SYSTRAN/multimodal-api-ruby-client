require 'rspec'
require_relative '../lib/multimodalApiClient'

describe "MultimodalApiClient" do
  before :all do
    MultimodalApiClient::Swagger.configure do |configuration|
      configuration.host = "﻿https://platform.systran.net:8904"
      if File.exists?("./key.txt")
        key = File.read("./key.txt", :encoding => 'UTF-8')
        if key.length > 0
          configuration.key = key
        else
          puts "The key.txt file is empty"
        end
      else
        puts"The key.txt file doesn't exists"
      end

    end

  end
  describe "Configuration" do
    it "assures the user has a correct client configuration" do
      expect(MultimodalApiClient::Swagger.configuration.key.length).to be_between(10, 100)
    end
  end
  describe "MultimodalApi" do
    it "Gets text from an audio file." do
      result = MultimodalApiClient::SpeechApi.multimodal_speech_transcribe_get(File.open("./spec/speech-lid.mp3","r"), "en")
      expect(result.segments).not_to be_empty
    end
    it "Aligns text and audio files." do
      result = MultimodalApiClient::SpeechApi.multimodal_speech_align_get(File.open("./spec/speech-lid.mp3","r"),  File.open("./spec/sample.txt","r"), "en")
      expect(result.segments).not_to be_empty
    end
    it "Segments an audio file." do
      result = MultimodalApiClient::SpeechApi.multimodal_speech_segment_get(File.open("./spec/speech-lid.mp3","r"))
      expect(result.segments).not_to be_empty
    end
    it "Detects languages from an audio file." do
      result = MultimodalApiClient::SpeechApi.multimodal_speech_detect_language_get(File.open("./spec/speech-lid.mp3","r"))
      expect(result.segments).not_to be_empty
    end
    it "Lists languages in which Speech is supported." do
      result = MultimodalApiClient::SpeechApi.multimodal_speech_supported_languages_get
      expect(result.languages).not_to be_empty
    end
  end

  describe "FileApi" do
    it "Gets a list of supported file formats." do
      result = MultimodalApiClient::FileApi.multimodal_file_supported_formats_get
      expect(result.formats).not_to be_empty
    end
    it "Extracts text from a file." do
      result = MultimodalApiClient::FileApi.multimodal_file_extract_text_get( File.open("./spec/sample.txt","r"))
      expect(result.format).not_to be_nil
    end
  end

  end
