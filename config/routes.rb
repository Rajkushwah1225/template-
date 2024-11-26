Rails.application.routes.draw do
  devise_for :users
  resources :employees
  root "employees#index"
 
  # resources :employees do
  #   delete 'destroy_employee', on: :member
  # end
  resources :employees, only: [:index, :show, :destroy]
end
