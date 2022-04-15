class Artist < ApplicationRecord
  validates :artist_name, presence: true

  validates :death_date, comparison: {greater_than: :birth_date}
end
