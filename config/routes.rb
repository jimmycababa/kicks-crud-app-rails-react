Rails.application.routes.draw do
  resources :kicks, only: [:index, :show, :create, :edit, :destroy]
end

# root 'kicks#index'

