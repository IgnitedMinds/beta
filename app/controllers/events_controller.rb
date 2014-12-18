class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all

  end

  def show

  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(
      		:title,
      		:location,
      		:venue,
      		:date_time,
      		:description,
      		:ext_url,)
    end
end
