Rails.application.routes.draw do

  namespace :admin do
    resources :stories do
      resources :parts
    end
  end
  
  resources :stories do
    resources :parts
  end
  
  root 'welcome#index'
end
