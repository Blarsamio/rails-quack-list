class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(_resource)
    lists_path
  end

  def after_sign_out_path_for
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username])

    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end
end
