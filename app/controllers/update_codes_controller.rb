class UpdateCodesController < ApplicationController
  # GET /update_codes
  # GET /update_codes.json
  def index
    @update_codes = UpdateCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @update_codes }
    end
  end

  # GET /update_codes/1
  # GET /update_codes/1.json
  def show
    @update_code = UpdateCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @update_code }
    end
  end

  # GET /update_codes/new
  # GET /update_codes/new.json
  def new
    @update_code = UpdateCode.new
    @user = current_user.id
    @reef_tank = ReefTank.where(:user_id => @user).last

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @update_code }
    end
  end

  # GET /update_codes/1/edit
  def edit
    @update_code = UpdateCode.find(params[:id])
    @user = current_user.id
    @reef_tank = ReefTank.where(:user_id => @user).last
  end

  # POST /update_codes
  # POST /update_codes.json
  def create
    @update_code = UpdateCode.new(params[:update_code])

    respond_to do |format|
      if @update_code.save
        format.html { redirect_to @update_code, notice: 'Update code was successfully created.' }
        format.json { render json: @update_code, status: :created, location: @update_code }
      else
        format.html { render action: "new" }
        format.json { render json: @update_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /update_codes/1
  # PUT /update_codes/1.json
  def update
    @update_code = UpdateCode.find(params[:id])

    respond_to do |format|
      if @update_code.update_attributes(params[:update_code])
        format.html { redirect_to @update_code, notice: 'Update code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @update_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /update_codes/1
  # DELETE /update_codes/1.json
  def destroy
    @update_code = UpdateCode.find(params[:id])
    @update_code.destroy

    respond_to do |format|
      format.html { redirect_to update_codes_url }
      format.json { head :no_content }
    end
  end
end
