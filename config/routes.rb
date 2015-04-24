Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/about'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

resources :users, only: [:new, :create, :show]

resources :posts do
    resources :comments, only: [:create, :destroy]
end


end
