Rails.application.routes.draw do
  devise_for :users
  get 'prototyps/index'



end
