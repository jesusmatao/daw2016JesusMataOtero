json.array!(@people) do |person|
  json.extract! person, :id, :name, :last_name, :email, :age, :phone_number
  json.url person_url(person, format: :json)
end
