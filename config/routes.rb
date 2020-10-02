Rails.application.routes.draw do
  devise_for :users

  root "forum_threads#index"
  resources :forum_threads, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
