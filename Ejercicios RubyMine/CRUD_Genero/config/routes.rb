Rails.application.routes.draw do
  resources :generos
  root 'generos#index'
end
