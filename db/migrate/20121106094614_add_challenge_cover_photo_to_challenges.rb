class AddChallengeCoverPhotoToChallenges < ActiveRecord::Migration
  def up
  	change_table :challenges do |t|
  		t.string :challenge_cover_photo
  	end
  end
end