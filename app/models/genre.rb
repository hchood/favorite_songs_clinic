class Genre < ActiveRecord::Base
  GENRE_NAMES = [
    'Rock',
    'Hip Hop',
    'Pop',
    'Classical',
    'Country'
  ]

  has_many :songs

  validates :name,
    presence: true,
    uniqueness: true,
    inclusion: { in: GENRE_NAMES }
end
