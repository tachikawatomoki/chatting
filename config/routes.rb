Rails.application.routes.draw do
  devise_for :users
  resources :moves
    root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :opinions
  resources :users
  # resources :opinion_comments, only: [:create, :destroy]
  resources :opinions do
  resources :opinion_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end
end
