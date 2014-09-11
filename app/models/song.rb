class Song < ActiveRecord::Base
  validates :name,
    presence: true,
    uniqueness: { scope: :artist_id }
end
