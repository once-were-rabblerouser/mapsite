class Post

	attr_reader :lat
	attr_reader :lon
	attr_reader :content

	def initialize(lat, lon, content)
		@lat = lat
		@lon = lon
		@content = content
	end



end