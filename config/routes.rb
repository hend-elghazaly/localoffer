Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#for calendar
  resources :events
  post 'news/addEventSource'


  controller :pages do
    get :visit, path: '/visit'
  end

#to have register in my account page
  devise_scope :user do
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users
  resources :users, only: :destroy

  resources :feedbacks, only: [:new,:create]
  root 'welcome#index'

  get 'feedback', to: "feedbacks#new"
  get 'information', to: "informations#index"
  get 'game', to: "games#game"
  get 'search', to: "search#index"
  get 'myAccount', to: "accounts#index"
  get 'education', to: "informations#education"
  get 'adult', to: "informations#adult"
  get 'leisure', to: "informations#leisure"
  # get 'links', to: "informations#links"
  get 'authority', to: "informations#local_authority"
  get 'offer', to: "informations#local_offer"
  get 'news', to: "news#scrape_events"
  get 'calendar', to: "visitors#index"
#for informations:
  get 'internships', to: "informations#internships"
  get 'transport', to: "informations#transport"
  get 'employment', to: "informations#employment"
  get 'colleges', to: "informations#colleges"
  get 'support', to: "informations#support"
  get 'ehcp', to: "informations#ehcp"

#web accesibility statement
  get 'accessability', to: "informations#accessability"
  get 'sitemap', to: "sitemap#index"



  get "/admin", to: "admins#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
