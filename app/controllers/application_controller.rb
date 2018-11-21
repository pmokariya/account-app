class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  protected

  def after_sign_in_path_for(resource)
    root_path
  end

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end