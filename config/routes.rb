
Rails.application.routes.draw do
  resources :employee_examination_sessions
  resources :employees
  resources :examination_sessions do
    get :examine
  end
  resources :workplaces
  resources :practitioners

  #root :to => redirect("/users/sign_in")
  root :to => "practitioners#index" # Change to dashboard when you build it
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
