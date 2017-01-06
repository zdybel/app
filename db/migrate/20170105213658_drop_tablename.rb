class DropTablename < ActiveRecord::Migration[5.0]
  def change
  	drop_table :cart_products
  end
end
