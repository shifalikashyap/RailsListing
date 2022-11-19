Rails.application.routes.draw do
  root 'home#index'
  resources :trains
  resources :stations

  get  'home/search_result'
end
