Rails.application.routes.draw do
  
  devise_for :users
  
  #post '/products/:id' , to: 'products#show'
  get '/products/:id' , to: 'products#index'

  resources :products, path: '/admin/products' , only: [:edit ,:new ]
  resources :products, except: [:edit]
  resources :admin
  resources :categories , path: '/admin/categories'
  #resources :articles do
  #  resources :comments
  #raend

  root 'home#index'
end
