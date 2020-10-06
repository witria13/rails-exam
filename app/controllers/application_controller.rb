class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # debugger
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def registration_paramss
    debugger
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
