class Conversion
  def self.save(file)    
    firstLine = true
    total = 0;    
    #Read the file
    my_array = File.readlines(file['datafile']).map do |line|
      #Ignore the first line; for each other line, read tab delimited data
      #Store in appropriate tables (without redundancy)
      #Keep a running total of purchases
      if (firstLine != true)
        
        purchaser_name, description, price, purchase_count, merchant_address, merchant_name = line.split("\t")
        
        merchant = Merchant.find_or_create_by_name_and_address(merchant_name, merchant_address);
        
        purchaser = Purchaser.find_or_create_by_name(purchaser_name);
        
        deal = Deal.find_or_create_by_description_and_price_and_merchant_id(description, price, merchant.id)
                
        purchaser_deal = PurchaserDeal.find_or_create_by_deal_id_and_purchaser_id_and_number_purchased(deal.id, purchaser.id, purchase_count)      
        
        total = total.to_f + (purchase_count.to_f * price.to_f)
      else      
        firstLine = false;
      end  
    end
    total  end
end