Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get "/", to:"contact#index"

    get "/new_contact", to: "contact#new_contact"

    post "/contact", to: "contact#create"


    get "/my_favourite", to: "contact#my_favourite"


    post"/favourite", to: "contact#favourite"




    post"/search", to: "contact#search"



    get"/search_result/:variable", to: "contact#search_result"




    get "/identity/:identity", to: "contact#show_user"



end
