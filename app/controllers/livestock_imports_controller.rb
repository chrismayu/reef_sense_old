class LivestockImportsController < ApplicationController
  # GET /livestock_imports
  # GET /livestock_imports.json
  def index
    @livestock_imports = LivestockImport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @livestock_imports }
    end
  end

  # GET /livestock_imports/1
  # GET /livestock_imports/1.json
  def show
    @livestock_import = LivestockImport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @livestock_import }
    end
  end

  # GET /livestock_imports/new
  # GET /livestock_imports/new.json
  def new
    @livestock_import = LivestockImport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @livestock_import }
    end
  end

  # GET /livestock_imports/1/edit
  def edit
    @livestock_import = LivestockImport.find(params[:id])
  end

  # POST /livestock_imports
  # POST /livestock_imports.json
  def create
    @livestock_import = LivestockImport.new(params[:livestock_import])

    respond_to do |format|
      if @livestock_import.save
        format.html { redirect_to @livestock_import, notice: 'Livestock import was successfully created.' }
        format.json { render json: @livestock_import, status: :created, location: @livestock_import }
      else
        format.html { render action: "new" }
        format.json { render json: @livestock_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /livestock_imports/1
  # PUT /livestock_imports/1.json
  def update
    @livestock_import = LivestockImport.find(params[:id])

    respond_to do |format|
      if @livestock_import.update_attributes(params[:livestock_import])
        format.html { redirect_to @livestock_import, notice: 'Livestock import was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @livestock_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livestock_imports/1
  # DELETE /livestock_imports/1.json
  def destroy
    @livestock_import = LivestockImport.find(params[:id])
    @livestock_import.destroy

    respond_to do |format|
      format.html { redirect_to livestock_imports_url }
      format.json { head :no_content }
    end
  end
end
