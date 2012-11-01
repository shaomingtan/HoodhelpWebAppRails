class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :description
      t.integer :challenge_id
      t.string :content_url

      t.timestamps
    end
    
    add_index :submissions, :challenge_id
  end
end
