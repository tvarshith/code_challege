class EventsController < ApplicationController
  def create
    if event = Event.create(event_params)
      render json: event.as_json(except: :organization_id), status: :created
    else
      render json: event.errors.full_messages, status: :unprocessible_entity  
    end
  end

  private
  def event_params
  	params.permit(:organization_id, :action, :host_name)
  end
end
