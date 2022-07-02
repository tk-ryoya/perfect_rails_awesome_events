Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "05962bf35571b5899b7a", "79f45e516bffd4d822731330cfca1a9907ebafb4"
  else
    provider :github,
      Rails.application.credentials.github[:client_id]
      Rails.application.credentials.github[:client_secret]
  end
end
