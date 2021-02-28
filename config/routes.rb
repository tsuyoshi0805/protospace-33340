Rails.application.routes.draw do
  devise_for :users
  get 'prototyps/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "prototyps#index"



end
