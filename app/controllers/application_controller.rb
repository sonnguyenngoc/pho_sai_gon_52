class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery with: :exception
  
  protected
  def layout_by_resource
    if controller_name == 'home' || controller_name == 'reservation' ||
       controller_name == 'about' || controller_name == 'contact' ||
       controller_name == 'cart' || controller_name == 'checkout'
        'frontend'
    end
  end
end
