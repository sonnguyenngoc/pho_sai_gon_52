class EventsController < ApplicationController
  def index
  end
  
  def show
    @gallery = Gallery.find(params[:g_id])
  end
end
