class JsonWebToken
 # Key of Encryption our Descryption
  SECRET_KEY = Rails.application.secrets.secret_key_base.to_s

  # Encryption of user password
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  # Descryptuion of user password
  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]['user_id']
    HashWithIndifferentAccess.new decoded
  end
end