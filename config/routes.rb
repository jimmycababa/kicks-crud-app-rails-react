Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  resources :kicks, only: [:index, :show, :create, :edit, :destroy]
end
end

root 'kicks#index'
# get '*path', to: 'kicks#index'
end
