Rails.application.routes.draw do
  root 'home#index'
  resources :trains
  resources :stations
  resources :train_stations

  get 'search_result' => 'home#search_result'
end
