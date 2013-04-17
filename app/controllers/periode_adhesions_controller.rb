class PeriodeAdhesionsController < ApplicationController
  before_filter :verfier_comptable
  load_and_authorize_resource

  # GET /periode_adhesions
  # GET /periode_adhesions.json
  def index
    @periode_adhesions = PeriodeAdhesion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @periode_adhesions }
    end
  end

  # GET /periode_adhesions/1
  # GET /periode_adhesions/1.json
  def show
    @periode_adhesion = PeriodeAdhesion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @periode_adhesion }
    end
  end

  # GET /periode_adhesions/new
  # GET /periode_adhesions/new.json
  def new
    @periode_adhesion = PeriodeAdhesion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @periode_adhesion }
    end
  end

  # GET /periode_adhesions/1/edit
  def edit
    @periode_adhesion = PeriodeAdhesion.find(params[:id])
  end

  # POST /periode_adhesions
  # POST /periode_adhesions.json
  def create
    @periode_adhesion = PeriodeAdhesion.new(params[:periode_adhesion])

    respond_to do |format|
      if @periode_adhesion.save
        format.html { redirect_to @periode_adhesion, notice: 'Periode adhesion was successfully created.' }
        format.json { render json: @periode_adhesion, status: :created, location: @periode_adhesion }
      else
        format.html { render action: "new" }
        format.json { render json: @periode_adhesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /periode_adhesions/1
  # PUT /periode_adhesions/1.json
  def update
    @periode_adhesion = PeriodeAdhesion.find(params[:id])

    respond_to do |format|
      if @periode_adhesion.update_attributes(params[:periode_adhesion])
        format.html { redirect_to @periode_adhesion, notice: 'Periode adhesion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @periode_adhesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periode_adhesions/1
  # DELETE /periode_adhesions/1.json
  def destroy
    @periode_adhesion = PeriodeAdhesion.find(params[:id])
    @periode_adhesion.destroy

    respond_to do |format|
      format.html { redirect_to periode_adhesions_url }
      format.json { head :no_content }
    end
  end
end
