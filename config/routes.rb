Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#primavera"
  # get "posts/:id" => "posts#verano"
  # get "posts/:id" => "posts#otono"
  # get "posts/:id" => "posts#invierno"
  post "posts/create" => "posts#create"

  get "/" => "home#top"
  get "about" => "home#about"
  # resources :home, only: [:top, :about]
  # resources :posts, only: [:index, :new, :create, :show]

end
