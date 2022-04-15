class AlbumOrder < ApplicationRecord
  belongs_to :albums
  belongs_to :orders
  validates :quantity, numericality { greater_than: 0 }
end
