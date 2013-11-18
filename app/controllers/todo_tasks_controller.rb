class TodoTasksController < ApplicationController
  # GET /todo_tasks
  # GET /todo_tasks.json
  def index
    @todo_tasks = TodoTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todo_tasks }
    end
  end

  # GET /todo_tasks/1
  # GET /todo_tasks/1.json
  def show
    @todo_task = TodoTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @todo_task }
    end
  end

  # GET /todo_tasks/new
  # GET /todo_tasks/new.json
  def new
    @todo_task = TodoTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @todo_task }
    end
  end

  # GET /todo_tasks/1/edit
  def edit
    @todo_task = TodoTask.find(params[:id])
  end

  # POST /todo_tasks
  # POST /todo_tasks.json
  def create
    @todo_task = TodoTask.new(params[:todo_task])

    respond_to do |format|
      if @todo_task.save
        format.html { redirect_to @todo_task, notice: 'Todo task was successfully created.' }
        format.json { render json: @todo_task, status: :created, location: @todo_task }
      else
        format.html { render action: "new" }
        format.json { render json: @todo_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todo_tasks/1
  # PUT /todo_tasks/1.json
  def update
    @todo_task = TodoTask.find(params[:id])

    respond_to do |format|
      if @todo_task.update_attributes(params[:todo_task])
        format.html { redirect_to @todo_task, notice: 'Todo task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todo_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_tasks/1
  # DELETE /todo_tasks/1.json
  def destroy
    @todo_task = TodoTask.find(params[:id])
    @todo_task.destroy

    respond_to do |format|
      format.html { redirect_to todo_tasks_url }
      format.json { head :no_content }
    end
  end
end
