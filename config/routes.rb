Carsoft::Application.routes.draw do

    resources :users do
    resources :vehicles
  end
  root :to => "pages#home"

  get "pages/home"
  get "pages/about"
  get "pages/admin"
  get  "admin2" => "pages#admin2", :as => "admin2"
  get "about" => "pages#about", :as => "about"

  resources :records

  resources :teams


  resources :format_surveys


  resources :results


  resources :answers


  resources :modify_users


  resources :center_programs


  resources :surveys


  resources :materials


  resources :parkings


  resources :sheets


  resources :porters


  resources :centers


  resources :programs


  resources :categories


  resources :questions


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
