Ibr::Application.routes.draw do
  root 'home#index'

  match 'about', to: 'home#about', via: :get, as: 'about'
  
end
