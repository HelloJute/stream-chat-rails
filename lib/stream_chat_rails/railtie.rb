require 'rails'

module StreamChatRails
  class Railtie < ::Rails::Railtie
    initializer 'stream_chat_rails.setup_logging' do
      StreamChatRails.logger = Rails.logger
    end
  end
end
