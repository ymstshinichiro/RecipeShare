class RemoveNoneNullRestrictionFromGroupOnRecipes < ActiveRecord::Migration[5.0]
  def change
    change_column_null :recipes, :group, :integer, null: true 
  end
end
