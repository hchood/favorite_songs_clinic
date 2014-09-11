class User < ActiveRecord::Base
  has_many :favorite_songs
  has_many :songs, through: :favorite_songs

  validates :name, presence: true
  validates :email,
    presence: true,
    uniqueness: true
end
