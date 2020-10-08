Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root "forum_threads#index"

  #RESOURCES DALAM RESOURCES
  resources :forum_threads, only: [:show, :new, :create, :edit, :update, :destroy] do
  	resources :forum_posts, only: [:create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
