Rails.application.routes.draw do
  
  match 'ola' => 'ola_mundo#index', via: 'get'
  #match 'restaurantes' => 'restaurantes#index', via: 'get'
 
  resources :comentarios

  resources :restaurantes

  resources :inicio
  #get 'inicio/index'
  
  root 'restaurantes#index'

end
