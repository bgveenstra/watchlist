class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    current_user_path
  end

  def index
  	render "../views/layouts/application.html.erb"
  end

end
