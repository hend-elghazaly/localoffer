Rails.application.routes.draw do

#for calendar
  resources :events

#to have register in my account page
  devise_scope :user do
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users

  resources :feedbacks, only: [:new,:create]
  root 'welcome#index'

  get 'feedback', to: "feedbacks#new"
  get 'information', to: "informations#index"
  get 'game', to: "games#game"
  get 'search', to: "search#index"
  get 'myAccount', to: "accounts#index"
  get 'education', to: "informations#education"
  get 'health', to: "informations#health"
  get 'life', to: "informations#life"
  get 'links', to: "informations#links"
  get 'authority', to: "informations#local_authority"
  get 'offer', to: "informations#local_offer"
  get 'news', to: "news#scrape_events"
  get 'calendar', to: "visitors#index"

  get 'sitemap/index'

#for sitemap http://aspiringwebdev.com/sitemaps-in-rails-in-five-minutes/
  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
