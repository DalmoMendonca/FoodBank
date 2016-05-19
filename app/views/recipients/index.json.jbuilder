json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :first_name, :last_name, :phone_number, :household_size, :address, :city, :zip, :public_note, :private_note
  json.url recipient_url(recipient, format: :json)
end
