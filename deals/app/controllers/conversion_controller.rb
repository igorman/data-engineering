class ConversionController < ApplicationController  
  def uploadFile    
    total =  Conversion.save(params[:file])    
    render :text => "$%.2f is the gross revenue loaded into the database" % total
  end
end