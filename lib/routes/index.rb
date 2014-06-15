module RabbleWeb
  module Routes
  	module Index
      def self.registered(app)

        app.get "/" do
          redirect to "/index/"
        end

        app.get "/index/?:post?" do
          
          id = params[:post] == nil ? 1 : params[:post]
          pins = []
          count = 0

            Location.all.each do |a|

              pins[count] = {:lat => a[:latitude], :lon => a[:longitude], :ref => a[:entry_id]}
              count += 1
            end

          entry = Entry.find(1)
          l = Location.find_by entry_id: entry[:id]
          pin =  {:lat => l[:latitude], :lon => l[:longitude], :ref => l[:entry_id]}


          haml :index, :locals => 
            { :postData => entry[:content],
              :location => pin,
              :zoom => "8",
              :pins => pins}
        end   
      end
    end
  end
end
