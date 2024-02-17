Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'
  resources :books, only: [:new, :index, :show]
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
