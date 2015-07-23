Rails.application.routes.draw do
  resources :cloudbits
  root 'cloudbits#index'
end
