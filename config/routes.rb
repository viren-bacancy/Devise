Rails.application.routes.draw do
  devise_for :users
  resources :pracs
  root 'pracs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
