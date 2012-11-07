DareRails::Application.routes.draw do
  
  get "web_app/sf"

  get "web_app/mv"

  get "web_app/disrupt"

  get "web_app/pa"

  get "web_app/sv"

  get "users/new"

  #match '/signup'  => 'users#new' 
  resources :challenges do
    resources :submissions
  end
  resources :users

  root to: "static_pages#home"

  match '/signup',  to: 'users#new'
  
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
end

