Rails.application.routes.draw do
  root 'home#index'
  get 'reservation' => "reservation#index", as: :reservation
  get 'about' => "about#index", as: :about
  get 'contact' => "contact#index", as: :contact
  get 'cart' => "cart#index", as: :cart
  get 'checkout' => "checkout#index", as: :checkout
end
