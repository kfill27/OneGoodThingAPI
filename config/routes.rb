Rails.application.routes.draw do
  resources :posts
  post 'authenticate', to: 'authentication#authenticate'
  resources :written_things
  resources :things
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
