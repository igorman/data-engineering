class PurchasersController < ApplicationController
  # GET /purchasers
  # GET /purchasers.json
  def index
    @purchasers = Purchaser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchasers }
    end
  end

  # GET /purchasers/1
  # GET /purchasers/1.json
  def show
    @purchaser = Purchaser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchaser }
    end
  end

  # GET /purchasers/new
  # GET /purchasers/new.json
  def new
    @purchaser = Purchaser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchaser }
    end
  end

  # GET /purchasers/1/edit
  def edit
    @purchaser = Purchaser.find(params[:id])
  end

  # POST /purchasers
  # POST /purchasers.json
  def create
    @purchaser = Purchaser.new(params[:purchaser])

    respond_to do |format|
      if @purchaser.save
        format.html { redirect_to @purchaser, notice: 'Purchaser was successfully created.' }
        format.json { render json: @purchaser, status: :created, location: @purchaser }
      else
        format.html { render action: "new" }
        format.json { render json: @purchaser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchasers/1
  # PUT /purchasers/1.json
  def update
    @purchaser = Purchaser.find(params[:id])

    respond_to do |format|
      if @purchaser.update_attributes(params[:purchaser])
        format.html { redirect_to @purchaser, notice: 'Purchaser was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchaser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchasers/1
  # DELETE /purchasers/1.json
  def destroy
    @purchaser = Purchaser.find(params[:id])
    @purchaser.destroy

    respond_to do |format|
      format.html { redirect_to purchasers_url }
      format.json { head :ok }
    end
  end
end
