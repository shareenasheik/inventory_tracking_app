Rails.application.routes.draw do
  resources :inventory_items do 
    collection do
      get 'update_quantity'
      patch 'update_quantity'
      get 'fetch'
    end
  end
  root 'inventory_items#index'
end
