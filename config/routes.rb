Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registration, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  resources :registration, :users, :solicitacaos, :historicos, :produtos, :departamentos

  get '/', to: 'welcome#index'
  post 'register', to: 'application#nome_do_metodo'
  get    'sign_in'   => 'login#new'
  post   'sign_in'   => 'login#create'
  delete 'sign_out'  => 'login#destroy'
  end
  

  