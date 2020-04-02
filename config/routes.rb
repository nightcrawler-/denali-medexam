
Rails.application.routes.draw do
  resources :employee_examination_sessions
  resources :employees
  resources :examination_sessions
  resources :workplaces
  #root :to => redirect("/users/sign_in")
  root :to => "practitioners#index"

  resources :practitioners
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
