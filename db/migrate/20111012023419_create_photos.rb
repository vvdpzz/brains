class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user, :null => false
      t.string :username, :null => false
      t.string :image
      t.string :salt
      
      t.integer :votes_count, :default => 0

      t.timestamps
    end
    add_index :photos, :user_id
  end
end
