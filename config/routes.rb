Rails.application.routes.draw do
  devise_for :users
  resources :notes
  # root 'welcome#index'
  root 'notes#index'
end
