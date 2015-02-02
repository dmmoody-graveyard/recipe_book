require 'bundler/setup'
Bundler.require(:default)

DIR[FILE.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }