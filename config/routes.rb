Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :customers, :products, :wishlists, :carts, :sessions

root 'customers#index'

get '/customers/:id', to: 'customers#show'

post '/sessions/destroy'

post '/products/add_to_cart'

post '/products/add_to_wishlist'


end
