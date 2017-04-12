Rails.application.routes.draw do

#for calendar
  resources :events
  post 'news/addEventSource'

#for admin
  resources :link_clicks, only: :create
  resources :visits, only: :index

  controller :pages do
    get :visit, path: '/visit'
  end

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
  get 'adult', to: "informations#adult"
  get 'leisure', to: "informations#leisure"
  get 'links', to: "informations#links"
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


  get 'sitemap/index'

  get "/admin", to: "admins#index"

#for sitemap http://aspiringwebdev.com/sitemaps-in-rails-in-five-minutes/
  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
