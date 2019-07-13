require 'bundler/setup'
Bundler.require

ENV['SINATRA_ENV'] ||= "development"

require_all 'app'
