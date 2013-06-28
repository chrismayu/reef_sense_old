class MaintainenceLogsController < ApplicationController
  # GET /maintainence_logs
  # GET /maintainence_logs.json
  def index
    @maintainence_logs = MaintainenceLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maintainence_logs }
    end
  end

  # GET /maintainence_logs/1
  # GET /maintainence_logs/1.json
  def show
    @maintainence_log = MaintainenceLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maintainence_log }
    end
  end

  # GET /maintainence_logs/new
  # GET /maintainence_logs/new.json
  def new
    @maintainence_log = MaintainenceLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maintainence_log }
    end
  end

  # GET /maintainence_logs/1/edit
  def edit
    @maintainence_log = MaintainenceLog.find(params[:id])
  end

  # POST /maintainence_logs
  # POST /maintainence_logs.json
  def create
    @maintainence_log = MaintainenceLog.new(params[:maintainence_log])

    respond_to do |format|
      if @maintainence_log.save
        format.html { redirect_to @maintainence_log, notice: 'Maintainence log was successfully created.' }
        format.json { render json: @maintainence_log, status: :created, location: @maintainence_log }
      else
        format.html { render action: "new" }
        format.json { render json: @maintainence_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maintainence_logs/1
  # PUT /maintainence_logs/1.json
  def update
    @maintainence_log = MaintainenceLog.find(params[:id])

    respond_to do |format|
      if @maintainence_log.update_attributes(params[:maintainence_log])
        format.html { redirect_to @maintainence_log, notice: 'Maintainence log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maintainence_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintainence_logs/1
  # DELETE /maintainence_logs/1.json
  def destroy
    @maintainence_log = MaintainenceLog.find(params[:id])
    @maintainence_log.destroy

    respond_to do |format|
      format.html { redirect_to maintainence_logs_url }
      format.json { head :no_content }
    end
  end
end
