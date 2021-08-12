Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
    # provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], :skip_jwt =>true
end