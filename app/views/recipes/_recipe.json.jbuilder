json.extract! recipe, :id, :title, :summary, :material, :howtomake, :genre, :madeit, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
