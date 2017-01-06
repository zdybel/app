class Removecolumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :products, :cart_id
  	remove_column :products, :wishlist_id
  end
end
