Rails.application.routes.draw do
  resources :coupons, only: [:index, :new, :create]
  get '/coupons/:id', to: 'coupons#show', as: 'coupon'
  # get '/coupons', to: 'coupons#index'
  # get '/coupons/new', to: 'coupons#new'
end
