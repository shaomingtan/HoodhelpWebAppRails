class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      
      t.string :brand_name
      t.string :brand_logo_url
      t.string :hero_img_url

      t.timestamps
    end
  end
end
