Rails.application.routes.draw do
  
  
    root to: 'tasks#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
  
    get 'signup', to: 'users#new'
    resources :tasks
    resources :users, only: [:create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
