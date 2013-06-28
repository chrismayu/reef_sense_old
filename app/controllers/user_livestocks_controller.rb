class UserLivestocksController < ApplicationController
  # GET /user_livestocks
  # GET /user_livestocks.json
  def index
    @user_livestocks = UserLivestock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_livestocks }
    end
  end

  # GET /user_livestocks/1
  # GET /user_livestocks/1.json
  def show
    @user_livestock = UserLivestock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_livestock }
    end
  end

  # GET /user_livestocks/new
  # GET /user_livestocks/new.json
  def new
    @user_livestock = UserLivestock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_livestock }
    end
  end

  # GET /user_livestocks/1/edit
  def edit
    @user_livestock = UserLivestock.find(params[:id])
  end

  # POST /user_livestocks
  # POST /user_livestocks.json
  def create
    @user_livestock = UserLivestock.new(params[:user_livestock])

    respond_to do |format|
      if @user_livestock.save
        format.html { redirect_to @user_livestock, notice: 'User livestock was successfully created.' }
        format.json { render json: @user_livestock, status: :created, location: @user_livestock }
      else
        format.html { render action: "new" }
        format.json { render json: @user_livestock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_livestocks/1
  # PUT /user_livestocks/1.json
  def update
    @user_livestock = UserLivestock.find(params[:id])

    respond_to do |format|
      if @user_livestock.update_attributes(params[:user_livestock])
        format.html { redirect_to @user_livestock, notice: 'User livestock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_livestock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_livestocks/1
  # DELETE /user_livestocks/1.json
  def destroy
    @user_livestock = UserLivestock.find(params[:id])
    @user_livestock.destroy

    respond_to do |format|
      format.html { redirect_to user_livestocks_url }
      format.json { head :no_content }
    end
  end
end
