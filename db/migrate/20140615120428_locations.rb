class Locations < ActiveRecord::Migration
  	def up
		create_table :locations do |t|
			t.string :latitude
			t.string :longitude
			t.integer :entry_id
		end
	Location.create(:latitude => "-37.801846", :longitude => "144.9881638", :entry_id => 1)
	Location.create(:latitude => "-37.801046", :longitude => "144.9881638", :entry_id => 2)
	Location.create(:latitude => "-37.806949", :longitude => "144.974066", :entry_id => 3)

	end
	def down
		drop_table :locations
	end

end
