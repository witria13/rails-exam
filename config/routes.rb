Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root "forum_threads#index"
  get 'forum_threads/dashboard'


  #RESOURCES DALAM RESOURCES
  resources :forum_threads, only: [:show, :new, :create, :edit, :update, :destroy, :dashboard] do
  	resources :forum_posts, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
