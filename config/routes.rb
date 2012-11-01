DareRails::Application.routes.draw do
  
  get "web_app/sf"

  get "web_app/mv"

  get "web_app/disrupt"

  get "web_app/pa"

  get "web_app/sv"

  get "users/new"

  match '/signup'  => 'users#new' 
  root :to => "static_pages#home"
  resources :challenges do
    resources :submissions
  end
  resources :users
match ':action' => "static_pages#:action"
end

