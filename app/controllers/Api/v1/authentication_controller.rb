class Api::V1::AuthenticationController < ApiController
  skip_before_action :authenticate_user!, only: [:login]

  def login
    user = User.find_by(email: params[:email])
    puts user
    if user&.valid_password?(params[:password])
      render json: { token: JsonWebToken.encode(sub: user.id), user: user }
    else
      render json: { errors: 'Usuário ou senha inválidos!' }
    end
  end
  
  def validate_user
    render json: current_user
  end
end