class Users::SessionsController < Devise::SessionsController
  include RackSessionFix
  
  respond_to :json
  private

  def respond_with(resource, _opts = {})
    render json: { user: resource, message: 'you are successfully logged in' }
  end

  def respond_to_on_destroy
    if current_user
      render json: {
        status: 200,
        message: "logged out successfully"
      }, status: :ok
    else
      render json: { status: 401, message: "Couldn't find an active session." }
    end
  end
end
