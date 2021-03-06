class ReefTanksController < ApplicationController
  # GET /reef_tanks
  # GET /reef_tanks.json
  
 #  before_filter :authenticate_user!, :except => [:hourly]
  
  
  def hourly
   
    stats  = Watcher.all
    
    #stats = Stat.hourly(params[:stat_type])
    respond_to do |format|
      format.json do
        datapoints = []
        stats.each do |stat|
          datapoints << {:title => "temp", :value => stat.temp}
        end
        datasequences = [
          {
            :title => 'Hourly count',
            :datapoints => datapoints
          }
        ]
        graph = {
          :title => I18n.t("stat_types.for_#{params[:stat_type]}"),
          :total => true,
          :color => "blue",
          :datasequences => datasequences
        }
        render :json => {:graph => graph}
      end
    end
  end
  
  
  
  def my_tank
     @user = current_user.id
      @reef_tank = ReefTank.where(:user_id => @user).last 
 
   
     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @reef_tanks }
     end
    
    
    
  end
  
  def setting
      @user = current_user.id
      @reef_tank = ReefTank.where(:user_id => @user).last
      
 
      
      
      
    #@reef_tank = ReefTank.find(params[:id])
    # @reef_tank = ReefTank.where(:id => @reef_tank)
    #@reef_tank = ReefTank.find(params[:id])
  
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reef_tanks }
    end
  end
  
  def index
    @user = current_user.id
    @reef_tanks = ReefTank.where(:user_id => @user)
  
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reef_tanks }
    end
  end

  # GET /reef_tanks/1
  # GET /reef_tanks/1.json
  def show
    @reef_tank = ReefTank.find(params[:id])
     @watchers = Watcher.all
     
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reef_tank }
    end
  end

  # GET /reef_tanks/new
  # GET /reef_tanks/new.json
  def new
  
    @reef_tank = ReefTank.new(:user_id => params[:user_id])


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reef_tank }
    end
  end

  # GET /reef_tanks/1/edit
  def edit
    @reef_tank = ReefTank.find(params[:id])
  end

  # POST /reef_tanks
  # POST /reef_tanks.json
  def create
    @reef_tank = ReefTank.new(params[:reef_tank])
   # @reef_tank  = @user.reef_tanks.build(params[:reef_tank])
    

    respond_to do |format|
      if @reef_tank.save
        format.html { redirect_to @reef_tank, notice: 'Reef tank was successfully created.' }
        format.json { render json: @reef_tank, status: :created, location: @reef_tank }
      else
        format.html { render action: "new" }
        format.json { render json: @reef_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reef_tanks/1
  # PUT /reef_tanks/1.json
  def update
    @reef_tank = ReefTank.find(params[:id])

    respond_to do |format|
      if @reef_tank.update_attributes(params[:reef_tank])
        format.html { redirect_to @reef_tank, notice: 'Reef tank was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reef_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reef_tanks/1
  # DELETE /reef_tanks/1.json
  def destroy
    @reef_tank = ReefTank.find(params[:id])
    @reef_tank.destroy

    respond_to do |format|
      format.html { redirect_to reef_tanks_url }
      format.json { head :no_content }
    end
  end
end
