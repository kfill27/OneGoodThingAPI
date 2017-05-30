Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :posts
  resources :written_things
  resources :things
end
