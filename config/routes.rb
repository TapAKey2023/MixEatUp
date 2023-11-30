Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  #  root "posts#index"
  get "filters", to: "filters#index"
  get "filters/meal", to: "filters#meal"
  get "filters/event", to: "filters#event"
  get "filters/occasion", to: "filters#occasion"
  get "filters/clarifications", to: "filters#clarifications"
  get 'filters/user_clarification_choice', to: "filters#user_clarification_choice"
  get 'filters/user_clarification_choice_og', to: "filters#user_clarification_choice_og"
  get "filters/allergies", to: "filters#allergies"
  get "filters/location", to: "filters#location"
  get "filters/preferences", to: "filters#preferences"
  get "filters/budget", to: "filters#budget"
  get "filters/budget_og", to: "filters#budget_og"
  get "filters/clarifications_og", to: "filters#clarifications_og"
  get "filters/meal_og", to: "filters#meal_og"

  get "restaurants/loading", to: "restaurants#loading"
  get "restaurants", to: "restaurants#index"
  get "restaurants/:id", to: "restaurants#show"
  post "restaurants/:id", to: "saved_restaurants#create"

  get "bills/new", to: "bills#new",  as: :new_bill
  post "bills", to: "bills#create"

  get "users/:id", to: "users#show", as: :user
  get "users/:id/edit", to: "users#edit", as: :edit_user
  patch "users/:id", to: "users#update"

  get "saved_restaurants", to: "restaurants#saved"
end
