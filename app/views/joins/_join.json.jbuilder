json.extract! join, :id, :category_id, :expense_id, :created_at, :updated_at

json.url join_url(join, format: :json)
