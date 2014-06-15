class Posts 

	attr_reader :posts 
	attr_reader :postCount

	def initialize()
		@posts = []
		@postCount = 0
	end

	def addPost(post)
		@posts[@postCount] = post
		@postCount += 1
	end

	def getPost(id)
		@posts[id]
	end

end
