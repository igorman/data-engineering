class Deal < ActiveRecord::Base
  belongs_to :merchant
  has_many :purchaserDeals
end
