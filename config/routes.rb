Ibr::Application.routes.draw do
  root 'home#index'
  devise_for :admins
  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}
  match 'about', to: 'home#about', via: :get, as: 'about'
  match 'board', to: 'home#board', via: :get, as: 'board'
  match 'edit_all_issues', to: 'issues#edit_all', via: :get, as: 'edit_all_issues'
  get '/pdf/:token', to: 'issue_orders#exchange_token_for_pdf', as: 'exchange_token_for_pdf'
  resources :issues do
    resources :issue_orders, only: [:new, :index, :create]
  end

  resources :posts
  match "*missing" => redirect("/"), via: :get
end
