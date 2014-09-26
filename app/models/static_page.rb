class StaticPage < ActiveRecord::Base
	include ActiveModel::Validations
  validates(:name, presence: true)
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates(:email, presence: true, format: {with: VALID_EMAIL_REGEX})
  validates(:phone, presence: true)
  validates(:message, presence: true, length: { maximum: 150 })
end
