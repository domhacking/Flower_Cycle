class EventsController < ApplicationController
  
  before_filter :set_event, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  respond_to :html, :json

  def index
    @events = Event.all
    respond_with(@events)
  end

  def show
    respond_with(@event)
  end

  def new
    @event = Event.new
    respond_with(@event)
  end

  def edit
  end

  def create
    
    @event = current_user.events.new(params[:event])
    @event.save
    respond_with(@event)
  end

  def update
    @event.update_attributes(params[:event])
    respond_with(@event)
  end

  def destroy
    @event.destroy
    respond_with(@event)
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end
end
