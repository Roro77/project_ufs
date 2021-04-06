Rails.application.routes.draw do
  resources :user_requests
  resources :clients
  resources :ufs, param: :date
  root "ufs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
