class PurchaserDeal < ActiveRecord::Base
  belongs_to :purchaser
  belongs_to :deal
end
