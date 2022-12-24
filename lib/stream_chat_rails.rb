require 'active_support'
require 'stream-chat'
require 'stream_chat_rails/logger'

module StreamChatRails
  extend ActiveSupport::Autoload

  autoload :Activity
  autoload :Config
  autoload :VERSION

  def self.client
    StreamChat::Client.new(
      config.api_key,
      config.api_secret,
      timeout: config.timeout,
      options: config.options
    )
  end

  def self.config
    @config ||= StreamChatRails::Config.new
  end

  def self.configure(&_block)
    yield(config) if block_given?
  end
end

require 'stream_chat_rails/railtie' if defined?(Rails)
