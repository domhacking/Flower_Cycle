class BouquetsController < ApplicationController
  before_filter :set_bouquet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bouquets = Bouquet.all
    respond_with(@bouquets)
  end

  def show
    respond_with(@bouquet)
  end

  def new
    @bouquet = Bouquet.new
    respond_with(@bouquet)
  end

  def edit
  end

  def create
    @bouquet = Bouquet.new(params[:bouquet])
    @bouquet.save
    respond_with(@bouquet)
  end

  def update
    @bouquet.update_attributes(params[:bouquet])
    respond_with(@bouquet)
  end

  def destroy
    @bouquet.destroy
    respond_with(@bouquet)
  end

  private
    def set_bouquet
      @bouquet = Bouquet.find(params[:id])
    end
end
