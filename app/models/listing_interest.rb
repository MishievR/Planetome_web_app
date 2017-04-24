class ListingInterest < ActiveRecord::Base
  belongs_to :listing
  belongs_to :interest
end
