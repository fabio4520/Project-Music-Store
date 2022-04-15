class Song < ApplicationRecord
  belongs_to :album

  validates :song_name, presence: true
  validates :duration, numericality: { greater_than: 0 }
end
