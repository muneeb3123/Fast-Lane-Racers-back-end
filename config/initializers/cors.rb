Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'example.com', 'localhost:3000'  

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true,
      expose: ['access-token', 'expiry', 'token-type', 'Authorization'] 
  end
end
