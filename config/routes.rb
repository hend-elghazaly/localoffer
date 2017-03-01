Rails.application.routes.draw do

#to have register in my account page
  devise_scope :user do
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users

  resources :feedbacks, only: [:new,:create]
  root 'welcome#index'

  get 'news', to: "news#news"
  get 'feedback', to: "feedbacks#new"
  get 'information', to: "informations#index"
  get 'game', to: "games#game"
  get 'search', to: "search#index"
  get 'myAccount', to: "accounts#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
