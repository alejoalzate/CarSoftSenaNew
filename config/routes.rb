Carsoft::Application.routes.draw do
  get "sessions/new"

  get "users/new"

  resources :authorizations

  resources :suggestions

    resources :users do
    resources :vehicles
    resources :teams
    resources :materials
    resources :modify_users
  end
  
  get "activate" => 'activations#create'
  
  root :to => "pages#home"

  get "pages/home"
  get "pages/about"
  get "pages/admin"
  get "pages/home"
  get "pages/about"
  get "pages/admin"
  get  "admin2" => "pages#admin2", :as => "admin2"
  get  "admin3" => "pages#admin3", :as => "admin3"
  get "about" => "pages#about", :as => "about"
  get "about" => "pages#about", :as => "about"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login"  => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"


  resources :sessions, :only => [:new, :create, :destroy]

  resource :password_resets, :controller => "password_resets" #, :only => [:new, :edit]

  
  resources :sessions

  resources :records
  resources :materials

  resources :parkings

  resources :porters

  resources :centers do
    resources :area_centers
  end 

  resources :area_centers do
    resources :responsibles
  end

  resources :programs

  resources :roles

  resources :type_users

  resources :type_vehicles

  resources :areas

  resources :codes

  resources :turns

  resources :rhs

  resources :documents

  resources :type_materials

end
