class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :favorite_songs
  has_many :users, through: :favorite_songs

  validates :name,
    presence: true,
    uniqueness: { scope: :artist_id }
end
