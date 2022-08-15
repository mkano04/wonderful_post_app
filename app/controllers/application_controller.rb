class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def after_sign_in_path_for(resource)
    user_path
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  before_action :configure_sign_up_parameters, if: :devise_controller?
  protected
    def configure_sign_up_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    end
end
