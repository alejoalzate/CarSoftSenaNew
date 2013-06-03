Carsoft::Application.routes.draw do
  resources :authorizations

  resources :suggestions

    resources :users do
    get :autocomplete_responsible_name, :on => :collection
    resources :vehicles
    resources :teams
    resources :materials
    resources :modify_users
  end
 
  root :to => "pages#home"

  get "pages/home"
  get "pages/about"
  get "pages/admin"
  get  "admin2" => "pages#admin2", :as => "admin2"
  get "about" => "pages#about", :as => "about"

  resources :records

  resources :center_programs

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

  resources :rols

  resources :type_users

  resources :type_vehicles

  resources :areas

  resources :codes

  resources :turns

  resources :rhs

  resources :documents

  resources :type_materials

end
