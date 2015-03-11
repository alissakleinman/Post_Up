Rails.application.routes.draw do
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'
  resources :games do 
    resources :messages
  end
  resources :users
  

  root 'home#index'

end
