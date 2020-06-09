Rails.application.routes.draw do
  
  devise_for :users
    root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :opinions
  resources :users
  get 'users/index/my_index' => 'users#my_index'
   get 'favorites/index'
  # resources :opinion_comments, only: [:create, :destroy]
  resources :opinions do
  resources :opinion_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]

  resources :myopinions
  
  end
end
