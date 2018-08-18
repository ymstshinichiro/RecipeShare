class AddAuthorToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :author, :integer, null: false
  end
end
