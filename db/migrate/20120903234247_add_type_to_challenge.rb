class AddTypeToChallenge < ActiveRecord::Migration
  def up
  	change_table :challenges do |t|
  		t.string :challenge_type
  		t.string :challenge_reward
  	end
  end
end
