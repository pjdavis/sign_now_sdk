# frozen_string_literal: true

module SignNowSDK
  # Base-class for the client, and managing the resources of SignNow.
  #
  # @author PJ Davis
  class Client
    ##
    # Initialize a new client
    #
    # @param username [String] SignNow username
    # @param password [String] SignNow password
    # @param basic_auth_token [String] SignNow Basic Auth Token
    # @param context [Symbol] can be `:production`, `:sandbox`, or `:custom`, for which context to use. Using `:custom`
    #   requires the `url` param be used.
    # @param url [String] base url for the SignNow service. Only required when using `:custom` for the context.
    def initialize(username:, password:, basic_auth_token:, context: :production, url: nil)
      @username = username
      @password = password
      @basic_auth_token = basic_auth_token
      @context = context
      @url = signnow_context || url
      @connection = Connection.new(self)
    end

    private

    def signnow_context
      case @context
      when :production
        SIGN_NOW_PRODUCTION_URL
      when :sandbox
        SIGN_NOW_SANDBOX_URL
      end
    end
  end
end
