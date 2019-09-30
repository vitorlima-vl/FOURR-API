Rails.application.routes.draw do
  resources :solicitacaos, :historicos, :produtos, :departamentos
  get '/', to: 'welcome#index'

  post 'register', to: 'application#nome_do_metodo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
