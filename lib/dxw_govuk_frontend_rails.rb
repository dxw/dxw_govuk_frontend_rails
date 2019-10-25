require "dxw_govuk_frontend_rails/version"

module DxwGovukFrontendRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'GovukFrontendRails.assets.precompile' do |app|
        app.config.assets.precompile <<
          [
            "favicon.ico",
            "govuk-apple-touch-icon-152x152.png",
            "govuk-apple-touch-icon-167x167.png",
            "govuk-apple-touch-icon-180x180.png",
            "govuk-apple-touch-icon.png",
            "govuk-crest-2x.png",
            "govuk-crest.png",
            "govuk-logotype-crown.png",
            "govuk-mask-icon.svg",
            "govuk-opengraph-image.png",
          ]
      end
    end
  end
end
