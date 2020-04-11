
Rails.application.routes.draw do
  resources :dashboards
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  #root :to => redirect("/users/sign_in")
  root :to => "practitioners#index"

  resources :employee_examination_sessions
  resources :employees
  resources :examination_sessions do
    member do
      get 'summary'
    end
  end
  resources :workplaces
  resources :practitioners

  devise_for :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
