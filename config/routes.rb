Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "baby_lists#create"
  get '/' => 'baby_lists#create'
  post '/addBaby' => 'babies#create'
end
