Rails.application.routes.draw do
  root 'persons#index'
  resources :persons do
    collection { post :import }
  end
  resources :buildings do
    collection { post :import }
  end

  get 'buildings/index'
end
