Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "651793104922921", "f2ab5720363df691a90397f1b3eeb701"
end