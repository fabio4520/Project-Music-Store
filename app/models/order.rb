class Order < ApplicationRecord
  belongs_to :customers
  # Validation for date
  validates :total, numericality: { greater_than: 0 }
end
