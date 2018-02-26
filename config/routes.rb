Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  post 'posts/create' => "posts#create"



  get 'projects/index' => "projects#index"

  get '/' => "home#top"

  get 'users/login' => "users#login_form"
  post 'users/login' => "users#login"
  post '/users/logout' => "users#logout"

  get 'users/index' => "users#index"
  get 'users/index/:country' => "users#country"
  get 'users/new' => "users#new"
  get 'users/:id' => "users#show"
  post 'users/create' => "users#create"





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
