Rails.application.routes.draw do
  root to: 'pages#home'
  get 'servicios', to: 'pages#servicios'
  get 'contacts', to: 'pages#contactos'
  post 'path', to: 'pages#path'
  post 'contacts', to: 'pages#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
