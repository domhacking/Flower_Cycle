class PurchasesController < ApplicationController
  
  before_filter :set_purchase, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  respond_to :html

  def index
    @purchases = Purchase.all
    respond_with(@purchases)
  end

  def show
    respond_with(@purchase)
  end

  def new
    @purchase = Purchase.new
    respond_with(@purchase)
  end

  def edit
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    @purchase.save
    respond_with(@purchase)
  end

  def update
    @purchase.update_attributes(params[:purchase])
    respond_with(@purchase)
  end

  def destroy
    @purchase.destroy
    respond_with(@purchase)
  end

  private
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end
end
