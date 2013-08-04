ReefSense::Application.routes.draw do
  resources :pictures


  resources :galleries


  resources :demos


  resources :notifications


  resources :equipment


  resources :user_equipments


  resources :update_codes


  resources :livestocks


  resources :user_livestocks


  resources :livestock_imports

  get "reef_tanks/my_tank"
  get "reef_tanks/setting"
  resources :reef_tanks
 


   authenticated :user do
    #root :to => "reef_tanks#index"
    root :to => "reef_tanks#my_tank"
   end


  root :to => "demos#home"

  resources :maintainence_logs


  resources :arduinos


  resources :watchers


  resources :todo_tasks


  resources :todo_lists


 
  devise_for :users
  resources :users
end