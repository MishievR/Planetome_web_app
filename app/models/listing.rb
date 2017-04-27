class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :listing_categories
  has_many :categories, through: :listing_categories
  has_many :listing_interests
  has_many :interests, through: :listing_interests
  validates :title, presence: true, length: { minimum: 5, maximum: 25 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :user_id, presence: true
  validates :category_ids, presence: true
  validates :interest_ids, presence: true
  validates :price, presence: true
  validates :price_time, presence: true
  validates :start_date, presence: true
  validates :tag_line, presence: true
end
