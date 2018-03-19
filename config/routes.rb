Rails.application.routes.draw do

#  resources :notes
  root "meters#index"


  resources :meters do
    resource :notes, only: [:new, :show, :edit, :update]
  end

end
