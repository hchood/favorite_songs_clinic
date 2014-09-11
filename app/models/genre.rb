class Genre < ActiveRecord::Base
  validates :name,
    presence: true,
    uniqueness: true,
    inclusion: { in: [
        'Rock',
        'Hip Hop',
        'Pop',
        'Classical',
        'Country'
      ]}
end
