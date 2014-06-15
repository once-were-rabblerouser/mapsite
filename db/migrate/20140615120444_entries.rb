class Entries < ActiveRecord::Migration
	def up
		create_table :entries do |t|
    	t.string  :entrytype
    	t.string  :content
  		end

	Entry.create(:entrytype => "BLOG", :content => "Here are some things")
	Entry.create(:entrytype => "BLOG", :content => "The second thing of interest")
 	Entry.create(:entrytype => "BLOG", :content => "Herin in three")
 	 	


	end

	def down
		drop_table :entries
	end
end