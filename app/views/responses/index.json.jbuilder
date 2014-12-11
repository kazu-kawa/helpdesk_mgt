json.array!(@responses) do |response|
  json.extract! response, :id, :responced_datetime, :user_id, :contents
  json.url response_url(response, format: :json)
end
