Rails.application.routes.draw do

  namespace :admin do
    resources :stories do
      resources :parts
    end
  end
  
  resources :stories, only: [:show] do
    resources :parts, only: [:show]
  end
  
  root 'welcome#index'
end
