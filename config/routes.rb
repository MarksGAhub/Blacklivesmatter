Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/about'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

resources :users, only: [:new, :create, :show]

resources :posts do
    # added show to comments
    resources :comments, only: [:create, :show, :destroy]
end


end
