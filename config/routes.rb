Rails.application.routes.draw do
  root 'persons#index'
  resources :persons do
    collection { post :import }
    collection { post :update_import }
  end
  resources :buildings do
    collection { post :import }
    collection { post :update_import }
  end

  get 'buildings/index'
end
