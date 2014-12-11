json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :accepted_datetime, :inquired_person, :contents
  json.url inquiry_url(inquiry, format: :json)
end
