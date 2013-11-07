Ibr::Application.routes.draw do
  root 'home#index'
  match 'about', to: 'home#about', via: :get, as: 'about'
  match 'board', to: 'home#board', via: :get, as: 'board'
  resources :issues do
    resources :issue_orders, only: [:new, :index, :create]
  end
end
