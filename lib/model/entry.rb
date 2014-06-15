require 'sinatra/activerecord'

class Entry < ActiveRecord::Base
      attr_reader :entrytype, :content 
      has_one :location
end