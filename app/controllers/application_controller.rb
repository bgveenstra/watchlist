class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
  	render "../views/layouts/application.html.erb"
  end

  def after_sign_in_path_for(resource_or_scope)
    current_user
  end

  def after_sign_up_path_for(resource_or_scope)
    current_user
  end

  def after_sign_out_path_for(resource_or_scope)
   new_user_registration_path
  end

end
