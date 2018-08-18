class AddGroupToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :group, :integer, null: false
  end
end
