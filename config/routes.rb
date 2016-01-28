Rails.application.routes.draw do
  root 'welcome#index'
  get 'info' => "info#index", as: :info
  get 'home' => "home#index", as: :home
  get 'about' => "about#index", as: :about
  get 'menu' => "menu#index", as: :menu
  get 'reservation' => "reservation#index", as: :reservation
  get 'blog' => "blog#index", as: :blog
  get 'blog_single' => "blog_single#index", as: :blog_single
  get 'contact' => "contact#index", as: :contact
  get 'demo_logo' => "demo_logo#index", as: :demo_logo
  get 'cart' => "cart#index", as: :cart
  get 'checkout' => "checkout#index", as: :checkout
  namespace :admin, path: "phosg52" do
    get 'main' => "main#index", as: :main
    resources :types
    resources :categories
    resources :restaurants
    resources :reservations
    resources :posts
    resources :menus
  end
end
