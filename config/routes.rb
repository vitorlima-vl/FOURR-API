Rails.application.routes.draw do
  resources :users, :solicitacaos, :historicos, :produtos, :departamentos

  get '/', to: 'welcome#index'
  post 'register', to: 'application#nome_do_metodo'

  get    'sign_in'   => 'login#new'
  post   'sign_in'   => 'login#create'
  delete 'sign_out'  => 'login#destroy'
  end
  

  