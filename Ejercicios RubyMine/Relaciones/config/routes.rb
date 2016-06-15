Rails.application.routes.draw do
  root 'estados#index'
  resources :estados

end
