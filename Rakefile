# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'dxw_govuk_frontend_rails/version'

task default: :assets

task 'assets' do
  Rake::Task['stylesheets'].execute
  Rake::Task['fonts'].execute
  Rake::Task['images'].execute
  Rake::Task['javascripts'].execute
end

task 'stylesheets' do
  Rake::FileList['node_modules/govuk-frontend/**/*.scss'].each do |source|
    target = source.sub('node_modules/govuk-frontend', 'vendor/assets/stylesheets')
    mkdir_p(File.dirname(target))
    copy_file source, target
  end
end

task 'fonts' do
  Rake::FileList[
     'node_modules/govuk-frontend/assets/fonts/*.{eot,woff,woff2,ico,svg}'
   ].each do |source|
     target = source.sub('node_modules/govuk-frontend', 'vendor')
     mkdir_p(File.dirname(target))
     copy_file source, target
   end
 end

task 'images' do
 Rake::FileList[
    'node_modules/govuk-frontend/assets/images/*.{png,gif,jpg,ico,svg}'
  ].each do |source|
    target = source.sub('node_modules/govuk-frontend', 'vendor')
    mkdir_p(File.dirname(target))
    copy_file source, target
  end
end

task 'javascripts' do
  files = Rake::FileList['node_modules/govuk-frontend/common.js'].each do |source|
    target = source.sub('node_modules/govuk-frontend', 'vendor/assets/javascripts')
    target = target.sub('common.js', 'govuk_frontend_rails.js')
    mkdir_p(File.dirname(target))
    copy_file source, target
  end
end
