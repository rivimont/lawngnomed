Rails.application.routes.draw do
  resources :orders

  get 'static/home'
  get 'static/about'
  get 'static/contact'
  root 'static#home'
end
