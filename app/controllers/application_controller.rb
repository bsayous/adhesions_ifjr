class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_compte!
  before_filter :verfier_comptable
  
  def verfier_comptable
    if compte_signed_in?
      if current_compte.comptable.nil?
        redirect_to comptes_verifier_path
      end 
    end
  end
  
end
