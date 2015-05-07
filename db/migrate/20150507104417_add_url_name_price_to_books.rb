class AddUrlNamePriceToBooks < ActiveRecord::Migration
  def change
    add_column :books, :url, :string
    add_column :books, :name, :string
    add_column :books, :price, :float
  end
end
