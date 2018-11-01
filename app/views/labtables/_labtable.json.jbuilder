json.extract! labtable, :id, :pid, :dt, :category, :amount, :created_at, :updated_at
json.url labtable_url(labtable, format: :json)
