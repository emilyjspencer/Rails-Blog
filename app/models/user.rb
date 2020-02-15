class User < ActiveRecord::Base
  has_many :articles # add an association between users and articles
  validates :user_id, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 80 }, uniqueness: { case_sensitive: false }, 
  format: { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }
  end
end