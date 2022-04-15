class ReceiptsController < ApplicationController
  before_action :single_receipt, only: [:show, :destroy, :edit, :update]
  def index 
    @receipts = Receipt.all
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new(receipt_params)
    @receipt.user = current_user
    if @receipt.save
      flash[:notice] = "Receipt Saved!"
      redirect_to @receipt
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @receipt.update(receipt_params)
      flash[:notice] = "Receipt Updated!"
      redirect_to @receipt
    else
      render 'edit'
    end
  end

  def destroy
    flash[:message] = "Receipt from #{@receipt.gas_station} was deleted!"
    @receipt.destroy
    redirect_to receipts_path
  end

  private 
  def receipt_params
    params.require(:receipt).permit(:gas_station, :gas_station_address, :gas_type, :price_per_gal, :fuel_total, :total_gallons, :date_pumped)
  end

  def single_receipt
    @receipt = Receipt.find(params[:id])
  end
end