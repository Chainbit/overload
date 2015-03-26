require 'rubygems'
require 'bundler'

Bundler.require(:default, ENV['RACK_ENV'] || :development)

require 'newrelic_rpm'
require './overload.rb'

run Overload.run!