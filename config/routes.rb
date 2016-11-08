Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get "/", to:"contact#index"

    get "/new_contact", to: "contact#new_contact"

    post "/contact", to: "contact#create"

    get "/:identity", to: "contact#show_user"

    post"/favourite", to: "contact#favourite"



end
