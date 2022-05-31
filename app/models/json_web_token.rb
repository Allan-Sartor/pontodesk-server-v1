class JsonWebToken
  SECRET_KEY = Rails.application.secrets.secret_key_base.to_s

  def self.encode(payload)
    expiration = 1.day.from_now.to_i
    JWT.encode payload.merge(exp: expiration), SECRET_KEY 
  end
  
  def self.decode(token)
    JWT.decode(token, SECRET_KEY).first
  end
end