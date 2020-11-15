json.extract! user, :id, :name, :birth_date, :cpf, :created_at, :updated_at
json.url user_url(user, format: :json)
