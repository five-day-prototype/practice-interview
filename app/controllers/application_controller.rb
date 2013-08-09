class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_filter :identify_mixpanel_user

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    end

    def mixpanel
      @mixpanel ||= Mixpanel::Tracker.new ENV["MIXPANEL_TOKEN"], env: request.env, persist: true
    end

  private
    def identify_mixpanel_user
      mixpanel.set current_user.id if current_user
    end
end
