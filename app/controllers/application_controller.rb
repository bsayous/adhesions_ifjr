class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_compte!
  
  def current_ability
    @current_ability ||= Ability.new(current_compte)
  end
  
  def verfier_comptable
    if compte_signed_in?
      if current_compte.comptable.nil?
        redirect_to comptes_verifier_path
      end 
    end
  end
  
end
