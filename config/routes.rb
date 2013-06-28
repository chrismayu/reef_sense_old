ReefSense::Application.routes.draw do
  resources :notifications


  resources :equipment


  resources :user_equipments


  resources :update_codes


  resources :livestocks


  resources :user_livestocks


  resources :livestock_imports


  resources :reef_tanks
  root :to => "reef_tanks#index"

   authenticated :user do
    root :to => "reef_tanks#index"
   end


  resources :maintainence_logs


  resources :arduinos


  resources :watchers


  resources :todo_tasks


  resources :todo_lists


 
  devise_for :users
  resources :users
end