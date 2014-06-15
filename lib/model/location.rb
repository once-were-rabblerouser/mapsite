require 'sinatra/activerecord'

class Location < ActiveRecord::Base
	attr_reader :latitude, :longitude
	belongs_to :entry
end
