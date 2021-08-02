# frozen_string_literal: true

module SignNowSDK
  # Manages the connection to the SignNow service
  class Connection
    def initialize(client)
      @client = client
    end

    def get(path:, params: {}, headers: {}); end
  end
end
