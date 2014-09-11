class AddUniquenessConstraintToSongs < ActiveRecord::Migration
  def change
    add_index :songs, [:name, :artist_id], unique: true
  end
end
