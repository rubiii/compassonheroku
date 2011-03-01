# server compass from the tmp directory
require 'fileutils'
FileUtils.mkdir_p(Rails.root.join('tmp', 'stylesheets'))
CompassonHeroku::Application.config.middleware.insert_before('Rack::Sendfile', 'Rack::Static', :root => 'tmp/', :urls => ['/stylesheets'])

# default compass initialization
require 'compass'
require 'compass/app_integration/rails'
Compass::AppIntegration::Rails.initialize!
