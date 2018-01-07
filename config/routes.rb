Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :sons
  devise_for :families
  root to: 'pages#home'

  resources :sons
  resources :families

  get 'team', to: 'pages#team'
  get 'sons-prayer', to: 'pages#sons-prayer'
  get 'families-prayer', to: 'pages#families-prayer'
end
