class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery with: :exception
  
  include CurrentOrder
  before_action :set_order, only: [:index, :create, :clear_items]
  
  protected
    def layout_by_resource
      if controller_name == 'home' || controller_name == 'reservation' ||
         controller_name == 'about' || controller_name == 'contact' ||
         controller_name == 'cart' || controller_name == 'checkout' || controller_name == 'blog' ||
         controller_name == 'blog_single' || controller_name == 'menu' || controller_name == 'demo_logo' ||
         controller_name == 'welcome' || controller_name == 'info' || controller_name == 'events' || controller_name == 'news' ||
         controller_name == 'catering' || controller_name == 'finish_contact' || controller_name == 'finish_order' || controller_name == 'finish_reservation'
            'frontend'
      elsif (devise_controller? && resource_name == :user && action_name != 'edit') || controller_name == 'passwords'
            'login'
      elsif controller_name == 'main' || controller_name == 'categories' || controller_name == 'types' ||
          controller_name == 'restaurants' || controller_name == 'reservations' || controller_name = 'posts' ||
          controller_name == 'menus' || controller_name == 'contacts' || controller_name == 'customer_orders'
            authenticate_user!
            'backend'
      end
    end
 
 
  before_action :set_locale
 
  def set_locale
    I18n.locale = params[:locale] #extract_locale_from_tld || I18n.default_locale
  end
  
  # Get locale from top-level domain or return nil if such locale is not available
  # You have to put something like:
  #   127.0.0.1 application.com
  #   127.0.0.1 application.it
  #   127.0.0.1 application.pl
  # in your /etc/hosts file to try this out locally
  def extract_locale_from_tld
    parsed_locale = request.host.split('.').last
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end
  
  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
