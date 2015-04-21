Rails.application.routes.draw do
  resources :posts, except: [:edit, :update, :destroy] do
        resources :comments, only: :create
  end
end
