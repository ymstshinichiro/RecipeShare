Rails.application.routes.draw do
  root 'home#index'

  resources :recipes  
  resources :users, only: %i[new create]

  get 'mypage', to: 'users#me'

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'top', to: 'top_menu#index'

end
