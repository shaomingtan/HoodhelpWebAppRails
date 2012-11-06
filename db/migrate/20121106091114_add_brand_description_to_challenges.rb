class AddBrandDescriptionToChallenges < ActiveRecord::Migration
  def up
  	change_table :challenges do |t|
  		t.string :brand_description
  	end
  end
end
