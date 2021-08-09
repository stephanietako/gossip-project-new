Rails.application.routes.draw do
root to: "gossips#index"
resources :gossips
get 'sign_up', to: "registrations#new"
post 'sign_up', to: "registrations#create"

get 'login', to: "gossips#new"
post 'login', to: "gossips#create"
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


