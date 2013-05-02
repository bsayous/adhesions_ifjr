module TypeAdhesionsHelper
  def type_individu_adhesions_pour_current_periode
    TypeAdhesion.where(:periode_adhesion_id => current_periode_adhesion.id, :type_comptable => TypeAdhesion::TYPE_INDIVIDU)
  end
end
