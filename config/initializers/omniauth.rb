Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['github_client_key'], ENV['github_client_secret'], scope: 'user'
end
