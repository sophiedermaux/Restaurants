Rails.application.routes.draw do

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
