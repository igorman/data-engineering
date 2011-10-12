class PurchaserDealsController < ApplicationController
  # GET /purchaser_deals
  # GET /purchaser_deals.json
  def index
    @purchaser_deals = PurchaserDeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchaser_deals }
    end
  end

  # GET /purchaser_deals/1
  # GET /purchaser_deals/1.json
  def show
    @purchaser_deal = PurchaserDeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchaser_deal }
    end
  end

  # GET /purchaser_deals/new
  # GET /purchaser_deals/new.json
  def new
    @purchaser_deal = PurchaserDeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchaser_deal }
    end
  end

  # GET /purchaser_deals/1/edit
  def edit
    @purchaser_deal = PurchaserDeal.find(params[:id])
  end

  # POST /purchaser_deals
  # POST /purchaser_deals.json
  def create
    @purchaser_deal = PurchaserDeal.new(params[:purchaser_deal])

    respond_to do |format|
      if @purchaser_deal.save
        format.html { redirect_to @purchaser_deal, notice: 'Purchaser deal was successfully created.' }
        format.json { render json: @purchaser_deal, status: :created, location: @purchaser_deal }
      else
        format.html { render action: "new" }
        format.json { render json: @purchaser_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchaser_deals/1
  # PUT /purchaser_deals/1.json
  def update
    @purchaser_deal = PurchaserDeal.find(params[:id])

    respond_to do |format|
      if @purchaser_deal.update_attributes(params[:purchaser_deal])
        format.html { redirect_to @purchaser_deal, notice: 'Purchaser deal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchaser_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchaser_deals/1
  # DELETE /purchaser_deals/1.json
  def destroy
    @purchaser_deal = PurchaserDeal.find(params[:id])
    @purchaser_deal.destroy

    respond_to do |format|
      format.html { redirect_to purchaser_deals_url }
      format.json { head :ok }
    end
  end
end
