class CreateFavoriteSongs < ActiveRecord::Migration
  def change
    create_table :favorite_songs do |t|
      t.integer :song_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :favorite_songs, [:song_id, :user_id], unique: true
  end
end
