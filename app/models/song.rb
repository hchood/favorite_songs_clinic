class Song < ActiveRecord::Base
  belongs_to :artist

  validates :name,
    presence: true,
    uniqueness: { scope: :artist_id }
end
