class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  format: { with: VALID_EMAIL_REGEX,message: "英文字のみが使用できます" }
  validates :name, length: { maximum: 20 }, presence: true
  validates :message, presence: true
end
