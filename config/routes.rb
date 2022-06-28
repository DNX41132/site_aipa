Rails.application.routes.draw do
  resources :adoptions
  get 'site/', to: 'site#index'
  get 'index/', to: 'site#index'
  root to: 'site#index' 

  get 'link1adote/', to: 'link1adote#link1adote'
  get 'link2denuncia/', to: 'link2denuncia#link2denuncia'
  get 'link3campanhas/', to: 'link3campanhas#link3campanhas'
  get 'link4missao/', to: 'link4missao#link4missao'
  get 'link5valores/', to: 'link5valores#link5valores'
  get 'link6meta/', to: 'link6meta#link6meta'
  get 'link7historia/', to: 'link7historia#link7historia'
  get 'link8contato/', to: 'link8contato#link8contato'
  get 'link9apoiar/', to: 'link9apoiar#link9apoiar'
  get 'link10doacoes/', to: 'link10doacoes#link10doacoes'
  get 'link11voluntario/', to: 'link11voluntario#link11voluntario'
  get 'link12diversao/', to: 'link12diversao#link12diversao'
  #get 'link12diversao/show', to: 'link12diversao#show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
