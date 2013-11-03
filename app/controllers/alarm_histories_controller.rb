class AlarmHistoriesController < ApplicationController
  # GET /alarm_histories
  # GET /alarm_histories.json
  def index
    @alarm_histories = AlarmHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alarm_histories }
    end
  end

  # GET /alarm_histories/1
  # GET /alarm_histories/1.json
  def show
    @alarm_history = AlarmHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alarm_history }
    end
  end

  # GET /alarm_histories/new
  # GET /alarm_histories/new.json
  def new
    @alarm_history = AlarmHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alarm_history }
    end
  end

  # GET /alarm_histories/1/edit
  def edit
    @alarm_history = AlarmHistory.find(params[:id])
  end

  # POST /alarm_histories
  # POST /alarm_histories.json
  def create
    @alarm_history = AlarmHistory.new(params[:alarm_history])

    respond_to do |format|
      if @alarm_history.save
        format.html { redirect_to @alarm_history, notice: 'Alarm history was successfully created.' }
        format.json { render json: @alarm_history, status: :created, location: @alarm_history }
      else
        format.html { render action: "new" }
        format.json { render json: @alarm_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alarm_histories/1
  # PUT /alarm_histories/1.json
  def update
    @alarm_history = AlarmHistory.find(params[:id])

    respond_to do |format|
      if @alarm_history.update_attributes(params[:alarm_history])
        format.html { redirect_to @alarm_history, notice: 'Alarm history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alarm_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alarm_histories/1
  # DELETE /alarm_histories/1.json
  def destroy
    @alarm_history = AlarmHistory.find(params[:id])
    @alarm_history.destroy

    respond_to do |format|
      format.html { redirect_to alarm_histories_url }
      format.json { head :no_content }
    end
  end
end
