class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :summary
      t.text :material
      t.text :howtomake
      t.string :genre
      t.string :madeit

      t.timestamps
    end
  end
end
