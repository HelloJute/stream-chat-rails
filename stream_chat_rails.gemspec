$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'stream_chat_rails/version'

Gem::Specification.new do |gem|
  gem.name = 'stream_chat_rails'
  gem.version = StreamChatRails::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.summary = "Simple Rails wrapper for Stream's Ruby Gem client"
  gem.email = 'julian@hellojute.com'
  gem.homepage = 'http://github.com/HelloJute/stream-chat-rails'
  gem.authors = ['Juian Cheal']
  gem.extra_rdoc_files = ['README.md', 'LICENSE']
  gem.files = Dir['lib/**/*']
  gem.license = 'MIT'
  gem.metadata = {
    'bug_tracker_uri' => 'https://github.com/HelloJute/stream-chat-rails/issues',
    'changelog_uri' => "https://github.com/HelloJute/stream-chat-rails/releases/tag/v#{StreamChatRails::VERSION}",
    'documentation_uri' => 'https://getstream.io/chat/docs/ruby/?language=ruby',
    'source_code_uri' => 'https://github.com/HelloJute/stream-chat-rails'
  }

  gem.required_ruby_version = '>= 3.0.4'

  gem.add_dependency 'actionpack', '>= 7.0.0'
  gem.add_dependency 'activerecord', '>= 7.0.0'
  gem.add_dependency 'railties', '>= 7.0.0'
  gem.add_dependency 'stream-chat-ruby', '~> 3.3.0'
end
