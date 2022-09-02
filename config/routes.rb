Rails.application.routes.draw do

  resources :cozinhas
  resources :baurus
  root "cardapios#index"
 
  resources :cardapios
  resources :quantidades
  resources :finalizados
  
end
