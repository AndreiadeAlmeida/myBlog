Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :posts

  get 'simple_pages/thank_you'

  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  root 'posts#index'

  # create home_path and home_url - home_path return /home
  get '/home', to: 'posts#index', as: 'home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
