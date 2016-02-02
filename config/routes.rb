Rails.application.routes.draw do
  resources :customer_orders
  resources :line_items
  resources :orders
  root 'welcome#index'
  get 'info' => "info#index", as: :info
  get 'home' => "home#index", as: :home
  get 'about' => "about#index", as: :about
  get 'menu' => "menu#index", as: :menu
  get 'reservation' => "reservation#index", as: :reservation
  get 'catering' => "catering#index", as: :catering
  get 'news' => "news#index", as: :news
  get 'events' => "events#index", as: :events
  get 'blog' => "blog#index", as: :blog
  get 'blog_single' => "blog_single#index", as: :blog_single
  get 'contact' => "contact#index", as: :contact
  get 'finish_contact' => "finish_contact#index", as: :finish_contact
  get 'demo_logo' => "demo_logo#index", as: :demo_logo
  get 'cart' => "cart#index", as: :cart
  get 'checkout' => "checkout#index", as: :checkout
  get 'clear_items' => "cart#clear_items"
  
  namespace :admin, path: "phosg52" do
    get 'main' => "main#index", as: :main
    resources :types
    resources :categories
    resources :restaurants
    resources :reservations
    resources :posts
    resources :menus
    resources :contacts
    resources :orders
    resources :customer_orders
    end
end
