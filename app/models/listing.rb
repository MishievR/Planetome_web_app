class Listing < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }

=begin
  belongs_to :category
  belongs_to :subcategory
=end


end
