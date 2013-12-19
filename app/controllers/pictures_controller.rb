class PicturesController < ApplicationController
  # GET /pictures
  # GET /pictures.json
  
  
  
  def step_1
        @picture = ReefTank.find(params[:reef_tank_id])
        @uploader = Picture.new.picture_image
        @uploader.success_action_redirect = new_picture_url(:reef_tank_id => params[:reef_tank_id])
       
   end
   
   def step_2

      @picture = Picture.new(key: params[:key], reef_tank_id: params[:reef_tank_id])

     respond_to do |format|
       if @picture.save
         
        format.html { redirect_to reef_tank_path(@picture.reef_tank_id), notice: 'The picture was successfully created.' }
        
         else
           format.html { render action: "step_1" }
           format.json { render json: @picture.errors, status: :unprocessable_entity }
         end
     end

   end
  
  def index
    @pictures = Picture.where(reef_tank_id: params[:reef_tank_id])
    @uploader = Picture.new.image
    @uploader.success_action_redirect = new_picture_url

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pictures }
    end
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
    @picture = Picture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/new
  # GET /pictures/new.json
  def new
    @picture = Picture.new(key: params[:key], :reef_tank_id => params[:reef_tank_id])
 
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/1/edit
  def edit
    @picture = Picture.find(params[:id])
  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = Picture.create(params[:picture])
  

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Picture was successfully created.' } 
      else
        format.html { render action: "new" } 
      end
    end
  end

  # PUT /pictures/1
  # PUT /pictures/1.json
  def update
    @picture = Picture.find(params[:id])

    respond_to do |format|
      if @picture.update_attributes(params[:picture])
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to pictures_url }
      format.json { head :no_content }
    end
  end
end
