class ApplicationController < ActionController::Base
  before_action :authenticate_rat!
  # Below to be moved to the dashboard controller READ ME
  # skip_before_action :authenticate_rat!, only: :home
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo])
  end

  def navbar
    @rat = Rat.find(params[:id])
  end
end
