Rails.application.routes.draw do

  namespace :admin do
    resources :stories do
      resources :parts
    end
  end
  
  resources :stories, only: [:show] do
    resources :parts, only: [:show]
  end
  
  get ':id/:part_id', to: 'stories#show_part', as: :show_story_part
  
  root 'welcome#index'
end
