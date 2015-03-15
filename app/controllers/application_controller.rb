class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
   skip_before_action :flash_attack, only: [:index, :new]
   
   protected
 
   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
   end

  protected
 
  def flash_attack
    flash[:message] = "This is the flass attack before_action."   
  end
end