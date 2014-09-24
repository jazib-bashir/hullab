class StaticPage < ActiveRecord::Base
  validates(:name, presence: true)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates(:email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false })
  validates(:phone, presence: true)
  validates(:message, presence: true, length: { maximum: 150 })
end
