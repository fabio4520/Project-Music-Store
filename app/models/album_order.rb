class AlbumOrder < ApplicationRecord
  belongs_to :albums
  belongs_to :orders
end
