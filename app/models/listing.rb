class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :listing_categories
  has_many :categories, through: :listing_categories
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :user_id, presence: true

end
