Rails.application.routes.draw do
  resources :solicitacaos
  resources :historicos
  resources :produtos
  resources :departamentos
  get '/', to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
