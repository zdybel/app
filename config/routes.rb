Rails.application.routes.draw do


  

root 'customers#index'

resources  :customers, :products, :wishlists, :carts, :sessions

 

get '/customers/:id', to: 'customers#show'

post '/sessions/destroy'

post '/products/add_to_cart'

post '/products/remove_from_cart'

post '/products/add_to_wishlist'

post '/products/remove_from_wishlist'

post '/products/move_to_cart'

post '/carts/destroy'




end
