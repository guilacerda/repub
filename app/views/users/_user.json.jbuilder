json.extract! user, :id, :first_name, :last_name, :email, :cpf, :birth_date, :gender, :string, :admin, :phone, :password, :password_confirmation, :created_at, :updated_at
json.url user_url(user, format: :json)
