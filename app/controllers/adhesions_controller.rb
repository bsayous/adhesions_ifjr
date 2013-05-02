class AdhesionsController < ApplicationController
  include PeriodeAdhesionsHelper
  
  before_filter :verfier_comptable
  load_and_authorize_resource

  # GET /adhesions
  # GET /adhesions.json
  def index
    @adhesions = Adhesion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adhesions }
    end
  end

  # GET /adhesions/1
  # GET /adhesions/1.json
  def show
    @adhesion = Adhesion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adhesion }
    end
  end

  # GET /adhesions/new
  # GET /adhesions/new.json
  def new
    @adhesion = Adhesion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adhesion }
    end
  end

  # GET /adhesions/1/edit
  def edit
    @adhesion = Adhesion.find(params[:id])
  end

  # POST /adhesions
  # POST /adhesions.json
  def create
    @adhesion = Adhesion.new(params[:adhesion])

    respond_to do |format|
      if @adhesion.save
        format.html { redirect_to @adhesion, notice: 'Adhesion was successfully created.' }
        format.json { render json: @adhesion, status: :created, location: @adhesion }
      else
        format.html { render action: "new" }
        format.json { render json: @adhesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adhesions/1
  # PUT /adhesions/1.json
  def update
    @adhesion = Adhesion.find(params[:id])

    respond_to do |format|
      if @adhesion.update_attributes(params[:adhesion])
        format.html { redirect_to @adhesion, notice: 'Adhesion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adhesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adhesions/1
  # DELETE /adhesions/1.json
  def destroy
    @adhesion = Adhesion.find(params[:id])
    @adhesion.destroy

    respond_to do |format|
      format.html { redirect_to adhesions_url }
      format.json { head :no_content }
    end
  end
  
  def rechercher_adherent
    type = params[:personne][:type]
    if type == TypeAdhesion::TYPE_INDIVIDU
      nom = params[:personne][:nom]
      prenom = params[:personne][:prenom]
      @personnes = Individu.where("nom like :nom or prenom like :prenom", nom: "%#{nom}%", prenom: "%#{prenom}%")
    else
      libelle = params[:personne][:libelle]
      @personnes = Structure.where("denomination like :libelle", libelle: "%#{libelle}%")
    end
  end
  
  def individu_adhesions
    @adhesions = Adhesion.individus
    @individu = Individu.find(params[:individu_id])
  end
  
  def create_individu_adhesions
    
    @adhesion = Adhesion.new(params[:adhesion])
    @individu = Individu.find(params[:individu_id])
    @adhesion.adherent = @individu

    if @adhesion.save
      redirect_to individu_adhesions_url
    else
      render :new_individu_adhesions
    end
    
  end
  
  def new_individu_adhesions
    @adhesion = Adhesion.new
    @individu = Individu.find(params[:individu_id])
  end
  
  def edit_individu_adhesion
    @adhesion = Adhesion.find(params[:id])
    @individu = Individu.find(params[:individu_id])
  end
  
  def show_individu_adhesion
    @adhesion = Adhesion.find(params[:id])
  end
  
  def update_individu_adhesion
  end
  
  def delete_individu_adhesion
    @adhesion = Adhesion.find(params[:id])
    @adhesion.destroy
  end
  
  
  def acces_recherche_adherent
    render :rechercher_adherent
  end
  
  def mes_adhesions
    @adhesion_en_cours = Adhesion.individus.where(:periode_adhesion_id => current_periode_adhesion.id, :adherent_id => current_compte.comptable.id).first
    @adhesions_precedentes = Adhesion.individus.where("adherent_id = ? AND periode_adhesion_id <> ?", current_compte.comptable.id, current_periode_adhesion.id).joins(:periode_adhesion).order("periode_adhesions.date_debut DESC")
  end
  
  def nouvelle_adhesion
  end
  
end
