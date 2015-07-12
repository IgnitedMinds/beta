class AuthController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  layout "application"

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u| u.permit(
      :first_name,
      :last_name,
      :user_name,
      :email,
      :encrypted_password,
      :password,
      :current_password,
      :date_of_birth,
      :location_list,
      :its_female,
      :avatar,
      :backgroundimg,
      :skill_list)
    end

    devise_parameter_sanitizer.for(:account_update) do |u| u.permit(
       :first_name,
       :last_name,
       :user_name,
       :email,
       :encrypted_password,
       :password,
       :current_password,
       :date_of_birth,
       :location_list,
       :its_female,
       :bio,
       :bg_url,
       :avatar,
       :admin,
       :backgroundimg,
       :skill_list)
    end
  end
end
