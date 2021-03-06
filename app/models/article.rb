class Article < ActiveRecord::Base
  belongs_to :user # adds association with user
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 100, maximum: 400 }
  validates :user_id, presence: true
end