Rails.application.routes.draw do
  namespace :admin do
    get 'top', to: 'top#top'
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    resources :items
    resources :artists, only: [:index, :new, :create, :destroy]
    resources :labels, only: [:index, :new, :create, :destroy]
    resources :genres, only: [:index, :new, :create, :destroy]
    get 'items/item_id/disks/new', to: 'disks#new'
    get 'items/item_id/disks/disk_id/songs', to: 'songs#index'
    get 'items/item_id/disks/disk_id/songs/new', to: 'songs#new'
    post 'items/item_id/disks/disk_id/songs', to: 'songs#create'
    delete 'items/item_id/disks/disk_id/songs/:id', to: 'songs#destroy'

    get 'items/item_id/arrivals', to: 'arrivals#index'
    get 'items/item_id/arrivals/new', to: 'arrivals#new'
    post 'items/item_id/arrivals/:id', to: 'arrivals#create'
    get 'items/item_id/arrivals/:id', to: 'arrivals#show'
    get 'items/item_id/arrivals/:id/edit', to: 'arrivals#edit'
    patch 'items/item_id/arrivals/:id', to: 'arrivals#update'
    put 'items/item_id/arrivals/:id', to: 'arrivals#update'
    delete 'items/item_id/arrivals/:id', to: 'arrivals#destroy'

    get 'items/:id/reviews/:id', to: 'reviews#show'
    get 'items/:id/reviews/:id/edit', to: 'reviews#edit'
    patch 'items/:id/reviews/:id/', to: 'reviews#update'
    put 'items/:id/reviews/:id/', to: 'reviews#update'
    delete 'items/:id/reviews/:id/', to: 'reviews#destroy'
  end
  devise_for :admins
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :add_addresses, only: [:new, :create, :edit, :update, :destroy]
  resources :items, only: [:index, :show]

  get 'items/item_id/reviews/new', to: 'reviews#new'
  post 'items/item_id/reviews', to: 'reviews#create'
  get 'items/item_id/reviews/:id/edit', to: 'reviews#edit'
  patch 'items/item_id/reviews/:id', to: 'reviews#update'
  put 'items/item_id/reviews/:id', to: 'reviews#update'
  delete 'items/item_id/reviews/:id', to: 'reviews#destroy'

  get 'likes', to: 'likes#index'
  post 'items/:id/likes', to: 'likes#create'
  delete 'items/:id/likes', to: 'likes#destroy'

  resources :cart_items, only: [:index, :create, :edit, :update, :destroy]
  resources :order_items, only: [:index, :new, :create]
  resources :orders, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
