Rails.application.routes.draw do

  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root 'customers#index'

resources  :products, :wishlists, :carts, :sessions

devise_for :customers

get '/customers/:id', to: 'customers#show'

post '/sessions/destroy'

post '/products/add_to_cart'

post '/products/remove_from_cart'

post '/products/add_to_wishlist'

post '/products/remove_from_wishlist'

post '/products/move_to_cart'

post '/carts/destroy'




end
