Rails.application.routes.draw do
  get 'admins/index'
  devise_for :members
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'members#index'

  resources :cohorts
  resources :courses
  resources :instructors
  resources :students
  resources :admins 
  resources :members           
end