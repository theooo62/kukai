class EventController < ApplicationController

  def index
    @events = Event.all
  end

  def create
		Event.create(event_params)
    redirect_to action: :index

 	end


  private

  def event_params
    params.permit(:event_title)
  end

end
