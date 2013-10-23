class Subscription < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :organization, presence: true
  validates :message, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email,
            presence: true,
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}
end
