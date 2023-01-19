def ATH::Config::CORS.configure
  new(
    allow_credentials: true,
    allow_methods: %w(GET POST PUT DELETE OPTIONS),
    allow_origin: %w(*),
    allow_headers: %w(Authorization Content-Type)
  )
end
