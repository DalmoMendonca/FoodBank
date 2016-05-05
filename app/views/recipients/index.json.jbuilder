json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :firstName, :lastName, :phoneNumber, :householdSize, :address, :city, :zip, :publicNote, :privateNote
  json.url recipient_url(recipient, format: :json)
end
