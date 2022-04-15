class Artist < ApplicationRecord
  validates :artist_name, presence: true

  # validate :birth_date, :birth_date_valid?
  # validates_date :death_date, after: lambda {:birth_date}

  # def birth_date_valid?
  #   if :birth_date > Date.current
  #     errors.add(:birth_date, "Invalid date!")
  #   end
  # end
end
