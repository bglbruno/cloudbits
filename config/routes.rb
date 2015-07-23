Rails.application.routes.draw do
  resources :cloudbits, except: [:edit, :update, :show] do
    get :download
  end
  root 'cloudbits#index'
end
