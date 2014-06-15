require 'sinatra/base'
require 'sinatra/content_for'
require 'sinatra/json'
require 'sinatra/activerecord'

require 'haml'
require 'json'
require_relative 'routes/index'
require './config/environments'
require_relative 'model/entry'
require_relative 'model/location'
require 'active_record'

class RabbleWebApp < Sinatra::Base

	helpers Sinatra::JSON
	helpers Sinatra::ContentFor

	set :root, File.dirname(__FILE__)
	set :static, true
	set :public_dir, 'public_dir'

 	register RabbleWeb::Routes::Index

end