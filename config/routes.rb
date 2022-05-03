Rails.application.routes.draw do
  resources :market_lists
  root 'market_lists#index'
end
