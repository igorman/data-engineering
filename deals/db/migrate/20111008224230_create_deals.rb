class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :description
      t.float :price
      t.integer :numberPurchased
      t.Merchant; :merchant

      t.timestamps
    end
    #add a foreign key
    execute <<-SQL
      ALTER TABLE deals
        ADD CONSTRAINT fk_deal_merchant
        FOREIGN KEY (merchant_id)
        REFERENCES merchants(id)
    SQL
  end
end
