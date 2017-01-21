require_relative 'boot'
[
  'action_controller/railtie',
  'action_view/railtie',
  'action_mailer/railtie',
  'active_job/railtie',
  'action_cable/engine',
  'rails/test_unit/railtie',
  'sprockets/railtie'
].each(&method(:require))

Bundler.require(*Rails.groups)

module SseLive
  class Application < Rails::Application
  end
end
