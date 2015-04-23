Rails.application.routes.draw do
root 'title_pages#index'

resources :users, only: [:new, :create]

resources :sessions, only: [:new, :create, :destroy]

resources :posts do
    resources :comments, only: [:create, :destroy]
end



  # resources :posts, except: [:edit, :update, :destroy] do
  #       resources :comments, only: :create
  # end
end
