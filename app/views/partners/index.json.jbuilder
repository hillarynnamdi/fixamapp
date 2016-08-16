json.array!(@partners) do |partner|
  json.extract! partner, :id, :first_name, :last_name, :gender, :state, :city, :office_location, :specializations
  json.url partner_url(partner, format: :json)
end
