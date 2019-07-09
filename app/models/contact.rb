class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  format: { with: VALID_EMAIL_REGEX,message: "英文字のみが使用できます" }
  validates :name, length: { maximum: 20 }, presence: true
  validates :message, presence: true
  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  validates :tell, presence: true, format: { with: VALID_PHONE_REGEX }
end
