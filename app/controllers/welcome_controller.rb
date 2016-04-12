class WelcomeController < ApplicationController
  def index
    @banners = Gallery.get_banner_events
  end
end
