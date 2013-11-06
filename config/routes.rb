Ibr::Application.routes.draw do
  root 'home#index'

  match 'about', to: 'home#about', via: :get, as: 'about'
  resources :issue_orders, only: [:new, :index]
  
end
