Rails.application.routes.draw do
  root "categories#bad"
  devise_for :users

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: :show, path: "" do
    resources :stories do
      resources :comments, only: :create
    end
  end

end
