Rails.application.routes.draw do
  devise_for :users
  # get 'users/show'
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  # get "posts/:id" => "posts#show"
  get "posts/:id" => "posts#primavera"
  get "posts/:id" => "posts#verano"
  get "posts/:id" => "posts#otono"
  get "posts/:id" => "posts#invierno"

  get "/" => "home#top"
  get "about" => "home#about"
  # resources :home, only: [:top, :about]
  # resources :posts, only: [:index, :new, :create, :show]
  # resources :posts
  # resources :home

end
