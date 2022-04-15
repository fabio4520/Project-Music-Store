class Customer < ApplicationRecord

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, messsage: "Invalid email, expected: example@mail.com"}
  validates :email, :username, presence: true, uniqueness: true
  validates :password, length: { maximum: 6 }, format: {with: /\d/, messsage: "It should contain at least one number."}

  # by default active_flag is true
end
