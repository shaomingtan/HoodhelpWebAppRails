class AddLocationToChallenge < ActiveRecord::Migration
  def up
  	change_table :challenges do |t|
  		t.string :challenge_location
  	end
  end
end
