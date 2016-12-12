class Organizations::EventsController < ApplicationController

  def search_recent
    events = Event.search_recent(organization_id: params[:organization_id], count: params[:count], host_name: params[:host_name])
    render json: events, status: :ok
  end
end