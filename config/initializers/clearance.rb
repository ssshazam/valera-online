Clearance.configure do |config|
  config.allow_sign_up = true
  config.cookie_domain = ->(request) { request.host }
  config.cookie_expiration = ->(_cookies) { 1.year.from_now.utc }
  config.cookie_name = 'remember_token'
  config.cookie_path = '/'
  config.routes = true
  config.httponly = false
  config.mailer_sender = 'reply@example.com'
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
  config.redirect_url = '/valera'
  config.secure_cookie = false
  config.sign_in_guards = []
  config.user_model = User
  config.rotate_csrf_on_sign_in = true
end
