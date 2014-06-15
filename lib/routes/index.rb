module RabbleWeb
  module Routes
  	module Index
      def self.registered(app)

        app.get "/" do
          redirect to "/index/"
        end

        app.get "/index/?:post?" do

          posts = settings.posts  
          
          id = params[:post] == nil ? 1 : params[:post]
          post = posts.getPost(id)


   #       target = json.first
   #       params[:post] = 1 if params[:post] == nil


          #handle if no post
    #      currentPost = json[params[:post]];




          haml :index, :locals => 
            {:title => "Title of an entry",
              :body => "This is some great content",
              :postData => post,
              :zoom => "8",
              :pins => post}
        end   
      end
    end
  end
end
