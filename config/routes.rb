Rails.application.routes.draw do
  devise_for :profiles
  devise_for :admins
  get '/', to: 'welcome#index'

  post 'register', to: 'application#nome_do_metodo'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
