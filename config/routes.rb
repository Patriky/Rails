Rails.application.routes.draw do
  
  resources :qualificacoes
  resources :clientes
  match 'ola' => 'ola_mundo#index', via: 'get'
  match 'search' => 'restaurantes#search', via: 'get'
  #match 'restaurantes' => 'restaurantes#index', via: 'get'
 
  resources :comentarios

  resources :restaurantes

  resources :inicio
  #get 'inicio/index'
  
  root 'inicio#index'

end
