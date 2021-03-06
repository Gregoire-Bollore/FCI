Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :sons
  devise_for :families
  root to: 'pages#home'

  resources :sons
  resources :families

  get 'team', to: 'pages#team'
  get 'sons_prayer', to: 'pages#sons_prayer'
  get 'families_prayer', to: 'pages#families_prayer'
  get 'morning_prayer', to: 'pages#morning_prayer'
  get 'evening_prayer', to: 'pages#evening_prayer'
end
