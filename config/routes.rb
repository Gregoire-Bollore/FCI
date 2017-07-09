Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :sons
  devise_for :families
  root to: 'pages#home'

  resources :sons
  resources :families
end
