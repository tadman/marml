RAILS_GEM_VERSION = '2.0.2' unless (defined?(RAILS_GEM_VERSION))

$: << File.dirname(__FILE__) + '/../../lib'

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.action_controller.session = {
    :session_key => '_rails_session',
    :secret      => '0229c6932427926c3e248ff6c267882512ce4271ea696eb3d0de2cb38c230f921bd0e5439f08d9ed8b6757ad1cd0c899af158ee2abe9fb8ec784e6553ab60835'
  }
end

