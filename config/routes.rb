Rails.application.routes.draw do
root 'title_pages#index'
  # resources :posts, do
  #       resources :comments, only: :create
  # end


  resources :posts, except: [:edit, :update, :destroy] do
        resources :comments, only: :create
  end
end
