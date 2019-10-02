Rails.application.routes.draw do
  resources :users
  get    'sign_in'   => 'login#new'
  post   'sign_in'   => 'login#create'
  delete 'sign_out'  => 'login#destroy'
  end
