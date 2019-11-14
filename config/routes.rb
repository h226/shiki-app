Rails.application.routes.draw do
  devise_for :users
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"

  get "/" => "home#top"
  get "about" => "home#about"
  resources :posts, only: [:index, :new, :create]

end
