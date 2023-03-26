Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :patients, only: [:show, :index, :new, :create, :edit, :update]
end
