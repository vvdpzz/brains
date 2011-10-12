class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user, :null => false
      t.string :username, :null => false
      t.string :image
      t.string :salt
      
      t.integer :ups, :default => 0
      t.integer :downs, :default => 0
      t.integer :score, :default => 0
      
      t.timestamps
    end
    add_index :photos, :user_id
  end
end
