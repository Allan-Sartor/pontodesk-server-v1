class Api::V1::AuthenticationController < ApiController
  skip_before_action :authenticate_user!, only: [:login]

  def login
    user = User.find_by(email: params[:email])

    if user&.valid_password?(params[:password])
      @token = JsonWebToken.encode(sub: user.id)

      render json: { token: @token, user: ActiveModelSerializers::SerializableResource.new(user).as_json }, status: :ok
    else
<<<<<<< HEAD
      render json: { errors: 'E-mail ou senha inválidos!' }, status: :unauthorized
=======
      render json: { errors: 'E-mail ou senha inválidos!' }
>>>>>>> 398b2c255480eab90ee86a67dc5e5851538c8079
    end
  end
  
  def validate_user
    render json: current_user, status: :ok
  end
end