class TypeAdhesionsController < ApplicationController
  before_filter :verfier_comptable
  load_and_authorize_resource
  
  # GET /type_adhesions
  # GET /type_adhesions.json
  def index
    @type_adhesions = TypeAdhesion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_adhesions }
    end
  end

  # GET /type_adhesions/1
  # GET /type_adhesions/1.json
  def show
    @type_adhesion = TypeAdhesion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_adhesion }
    end
  end

  # GET /type_adhesions/new
  # GET /type_adhesions/new.json
  def new
    @type_adhesion = TypeAdhesion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_adhesion }
    end
  end

  # GET /type_adhesions/1/edit
  def edit
    @type_adhesion = TypeAdhesion.find(params[:id])
  end

  # POST /type_adhesions
  # POST /type_adhesions.json
  def create
    @type_adhesion = TypeAdhesion.new(params[:type_adhesion])

    respond_to do |format|
      if @type_adhesion.save
        format.html { redirect_to @type_adhesion, notice: 'Type adhesion was successfully created.' }
        format.json { render json: @type_adhesion, status: :created, location: @type_adhesion }
      else
        format.html { render action: "new" }
        format.json { render json: @type_adhesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_adhesions/1
  # PUT /type_adhesions/1.json
  def update
    @type_adhesion = TypeAdhesion.find(params[:id])

    respond_to do |format|
      if @type_adhesion.update_attributes(params[:type_adhesion])
        format.html { redirect_to @type_adhesion, notice: 'Type adhesion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_adhesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_adhesions/1
  # DELETE /type_adhesions/1.json
  def destroy
    @type_adhesion = TypeAdhesion.find(params[:id])
    @type_adhesion.destroy

    respond_to do |format|
      format.html { redirect_to type_adhesions_url }
      format.json { head :no_content }
    end
  end
end
