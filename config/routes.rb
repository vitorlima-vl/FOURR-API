Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]


  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  post :forgot, to: "senhas#forgot"
  post :reset, to: "senhas#reset"
  post :new_img, to: "produtos#nova_img"
  post :new_product, to: "produtos#novo_produto"


  resources :users, :solicitacaos, :historicos, :produtos, :departamentos

  get '/', to: 'welcome#index'
  end
  

  