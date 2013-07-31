class WatchersController < ApplicationController
  # GET /watchers
  # GET /watchers.json
  
     
  # has_many :alarm_codes, :foreign_key => :tank_name, :primary_key =>  :temp_name

  #default_scope order: 'watchers.created_at DESC'
  
   protect_from_forgery :except => [:create]

    def create
      #:reef_tank_arduino_id =>  params[:t_n]
   # @ardunios = Ardunio.where(:reef_tank_arduino_id => params[:t_n])
   
      
     
      Watcher.create!(:params => params, :temp => params[:m_t], :waterlevelokay => params[:w_l], :skimmer => params[:skim], :updated_reason => params[:h_c], :reef_tank_arduino_id => params[:t_n], :main_light => params[:daylight], :powerhead => params[:ph], :ambeint_temp => params[:a_t], :main_pump => params[:m_p], :ato_pump => params[:ato], :heater => params[:h]
      )
     render :nothing => true
 
    end
  
  
  def index
   @watchers = Watcher.all
     #   @watchers = Watcher.where(:reef_tank_arduino_id => @reef_tank)
    #@watchers = Watcher.paginate(page: params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @watchers }
    end
  end

  # GET /watchers/1
  # GET /watchers/1.json
  def show
    @watcher = Watcher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @watcher }
    end
  end

  # GET /watchers/new
  # GET /watchers/new.json
  def new
    @watcher = Watcher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @watcher }
    end
  end

  # GET /watchers/1/edit
  def edit
    @watcher = Watcher.find(params[:id])
  end
 

  # PUT /watchers/1
  # PUT /watchers/1.json
  def update
    @watcher = Watcher.find(params[:id])

    respond_to do |format|
      if @watcher.update_attributes(params[:watcher])
        format.html { redirect_to @watcher, notice: 'Watcher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @watcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watchers/1
  # DELETE /watchers/1.json
  def destroy
    @watcher = Watcher.find(params[:id])
    @watcher.destroy

    respond_to do |format|
      format.html { redirect_to watchers_url }
      format.json { head :no_content }
    end
  end
end
