Rails.application.routes.draw do
  resources :posts
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
