Rails.application.routes.draw do
  resources :sessions
  resources :employees
  resources :workplaces
  resources :practitioners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
