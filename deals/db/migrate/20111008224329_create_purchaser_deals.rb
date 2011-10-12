class CreatePurchaserDeals < ActiveRecord::Migration
  def change
    create_table :purchaser_deals do |t|
      t.Purchaser :purchaser
      t.Deal; :deal

      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE purchaser_deals
        ADD CONSTRAINT fk_purchaser_deal
        FOREIGN KEY (purchaser_id)
        REFERENCES purchasers(id)
    SQL
    execute <<-SQL
      ALTER TABLE  purchaser_deals
        ADD CONSTRAINT fk_deal_purchaser
        FOREIGN KEY (deal_id)
        REFERENCES deals(id)
    SQL
  end
end
