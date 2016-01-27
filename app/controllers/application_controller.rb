class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery with: :exception
  
  protected
  def layout_by_resource
    if controller_name == 'home' || controller_name == 'reservation' ||
       controller_name == 'about' || controller_name == 'contact' ||
       controller_name == 'cart' || controller_name == 'checkout' || controller_name == 'blog' ||
       controller_name == 'blog_single' || controller_name == 'menu' || controller_name == 'demo_logo'
          'frontend'
    elsif controller_name == 'main' || controller_name == 'categories' || controller_name == 'types' ||
        controller_name == 'restaurants' || controller_name == 'reservations' || controller_name = 'posts'
          'backend'
    end
  end
end
