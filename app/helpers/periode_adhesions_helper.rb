module PeriodeAdhesionsHelper
  def current_periode_adhesion
    PeriodeAdhesion.where("date_debut <= ? and date_fin >= ?", Date.today, Date.today).first
  end
end
