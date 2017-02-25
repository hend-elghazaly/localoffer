Rails.application.routes.draw do
  devise_for :users
  
  resources :feedbacks, only: [:new,:create]
  root 'welcome#index'

  get 'news', to: "news#news"
  get 'sign_up', to: "devise#new"
  get 'feedback', to: "feedbacks#index"
  get 'information', to: "informations#index"
  get 'game', to: "games#game"
  get 'search', to: "search#index"
  get 'myAccount', to: "accounts#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
