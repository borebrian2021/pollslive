ENV["RACK_ENV"] ||= "development"


#require gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

#require in all files app directory 

require_all 'app'