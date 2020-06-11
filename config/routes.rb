Rails.application.routes.draw do
  
  devise_for :users
    root 'home#top'
  resources :users
  get 'users/index/my_index' => 'users#my_index'
   get 'favorites/index'
  resources :opinions do
  resources :opinion_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]

  resources :myopinions
  
  end
end
