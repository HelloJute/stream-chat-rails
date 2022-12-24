module StreamChatRails
  class Config
    attr_accessor :api_key
    attr_accessor :api_secret
    attr_accessor :timeout
    attr_accessor :options

    def initialize
      @timeout = 3
    end
  end
end
