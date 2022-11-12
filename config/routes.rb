Rails.application.routes.draw do
  root 'home#index'
  resources :trains

  get  'home/search_result'
end
