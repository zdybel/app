class RenameTable < ActiveRecord::Migration[5.0]
  def change
  	rename_table :wishlists_products, :products_wishlists
  end
end
