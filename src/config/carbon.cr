abstract class BaseEmail < Carbon::Email
  from Carbon::Address.new(ENV["APP_NAME"], ENV["CARBON_FROM_ADDRESS"])
end

Carbon::SmtpAdapter.configure do |settings|
  settings.host = "smtp.fastmail.com"
  settings.port = 587
  settings.use_tls = true
  settings.username = ENV["SMTP_USERNAME"]? || ""
  settings.password = ENV["SMTP_PASSWORD"]? || ""
end

BaseEmail.configure do |settings|
  settings.adapter = ENV["CRYSTAL_ENV"]? == "development" ? Carbon::DevAdapter.new(print_emails: true) : Carbon::SmtpAdapter.new
end
