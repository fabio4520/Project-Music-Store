class Album < ApplicationRecord
  belongs_to :artist
  validates :album_name, presence: true
  validates :price,  numericality: { greater_than: 0 }
end
