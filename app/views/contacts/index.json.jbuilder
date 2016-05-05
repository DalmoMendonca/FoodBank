json.array!(@contacts) do |contact|
  json.extract! contact, :id, :date, :note, :action
  json.url contact_url(contact, format: :json)
end
