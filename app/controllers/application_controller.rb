class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_host!
  # before_action :confirmation_token
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
  def configure_permitted_parameters
    added_attrs = [:first_name, :last_name,:date_of_birth, :is_female, :user_name, :email, :contact_no, :password, :password_confirmation, :remember_me,:confirmable]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
