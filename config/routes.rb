Rails.application.routes.draw do
    devise_for :users
    root to: "prototypes#index"
    resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :prototype, only: [:index, :new, :show, :edit, :update, :destroy]
    
end
    