class Ability
  include CanCan::Ability

  def initialize(compte)
    @compte = compte || Compte.new # for guest
    @compte.roles.each { |role| send(role.name.downcase) }
    if @compte.roles.size == 0
      if @compte.comptable.individu?
        can [:show, :update], Individu, :compte => { :id => compte.id }
      end
      if @compte.comptable.structure?
        can [:show, :update], Structure, :compte => { :id => compte.id }
      end
      can [:show, :update], Adhesion, :adherent => { :id => compte.comptable.id }
      can [:verifier, :remplir_infos_individu, :valider_infos_individu, :remplir_infos_structure, :valider_infos_structure, :mes_infos], Compte 
    end

  end
  
  def admin
    can :manage, Compte
    can :manage, Individu
    can :manage, Structure
    can :manage, PeriodeAdhesion
    can :manage, TypeAdhesion
    can :manage, Adhesion
  end
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
end
