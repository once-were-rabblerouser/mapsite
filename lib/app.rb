require 'sinatra/base'
require 'sinatra/content_for'
require 'sinatra/json'
require 'haml'
require 'json'
require_relative 'routes/index'
require_relative 'model/posts'
require_relative 'model/post'

class RabbleWebApp < Sinatra::Base

	helpers Sinatra::JSON
	helpers Sinatra::ContentFor
	
	posts = Posts.new
    locationsPath = settings.root + "/model/locations.json"   
	file = File.read(locationsPath)
	json = JSON.parse(file)
	
	json.each do |a|
		post = Post.new(a["lat"], a["lon"], a["aaa"])
		posts.addPost(post)
	end

	set :posts, posts

	set :root, File.dirname(__FILE__)
	set :static, true
	set :public_dir, 'public_dir'
 	register RabbleWeb::Routes::Index
          
end