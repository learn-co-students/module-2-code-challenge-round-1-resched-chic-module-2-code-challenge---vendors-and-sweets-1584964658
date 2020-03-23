Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/sweets', to: "sweets#index", as: "sweets"
  #get '/vendors', to: "vendors#index", as: "vendors"
  resources :vendorsweets, only: [:index, :show, :edit, :new, :create]
  resources :vendors, only: [:index,:show,:edit,:new]
  resources :sweets,only: [:index,:show,:edit,:new]

end
