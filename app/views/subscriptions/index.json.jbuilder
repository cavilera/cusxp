json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :first_name, :last_name, :organization, :title, :country, :mobile, :email, :message
  json.url subscription_url(subscription, format: :json)
end
