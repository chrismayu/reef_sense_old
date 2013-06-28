class UserEquipmentsController < ApplicationController
  # GET /user_equipments
  # GET /user_equipments.json
  def index
    @user_equipments = UserEquipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_equipments }
    end
  end

  # GET /user_equipments/1
  # GET /user_equipments/1.json
  def show
    @user_equipment = UserEquipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_equipment }
    end
  end

  # GET /user_equipments/new
  # GET /user_equipments/new.json
  def new
    @user_equipment = UserEquipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_equipment }
    end
  end

  # GET /user_equipments/1/edit
  def edit
    @user_equipment = UserEquipment.find(params[:id])
  end

  # POST /user_equipments
  # POST /user_equipments.json
  def create
    @user_equipment = UserEquipment.new(params[:user_equipment])

    respond_to do |format|
      if @user_equipment.save
        format.html { redirect_to @user_equipment, notice: 'User equipment was successfully created.' }
        format.json { render json: @user_equipment, status: :created, location: @user_equipment }
      else
        format.html { render action: "new" }
        format.json { render json: @user_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_equipments/1
  # PUT /user_equipments/1.json
  def update
    @user_equipment = UserEquipment.find(params[:id])

    respond_to do |format|
      if @user_equipment.update_attributes(params[:user_equipment])
        format.html { redirect_to @user_equipment, notice: 'User equipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_equipments/1
  # DELETE /user_equipments/1.json
  def destroy
    @user_equipment = UserEquipment.find(params[:id])
    @user_equipment.destroy

    respond_to do |format|
      format.html { redirect_to user_equipments_url }
      format.json { head :no_content }
    end
  end
end
