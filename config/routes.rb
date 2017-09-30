Rails.application.routes.draw do
  resources :parts

  resources :stories

  root 'welcome#index'
end
