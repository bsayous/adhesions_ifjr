module AdhesionsHelper
  def adhesion_en_cours?
    Adhesion.where("adherent_id = ? and periode_adhesion_id = ?", current_compte.comptable_id, current_periode_adhesion.id).empty? == false
  end
end
