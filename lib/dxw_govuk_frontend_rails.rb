require "dxw_govuk_frontend_rails/version"

module DxwGovukFrontendRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'GovukFrontendRails.assets.precompile' do |app|
        app.config.assets.precompile <<
          /[\w]+\.(?:png|svg|gif|ico|eot|woff|woff2)$/
      end
    end
  end
end
