class Users::RegistrationsController < Devise::RegistrationsController
  include RackSessionFix
  respond_to :json
  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: { user: resource, message: 'User created successfully' }
    else
      render json: { status: 401, message: 'Unable to create user' }
    end
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
