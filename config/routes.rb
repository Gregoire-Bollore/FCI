Rails.application.routes.draw do
  devise_for :sons
  devise_for :families
  root to: 'pages#home'

  resources :sons
  resources :families
end
