class AddCategorieidToBooks < ActiveRecord::Migration
  def change
    add_column :books, :categories_id, :integer
  end
end
