class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /tasks
  # GET /tasks.json
  def index
    @pagy,@tasks = pagy(Task.all.order(sort_column + ' ' + sort_direction))
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @order_line = params[:order_line_id]
  end

  # GET /tasks/1/edit
  def edit
    @order_line = @task.order_line
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @nested_ol = params[:nested_ol]

    respond_to do |format|
      if @task.save
        if @nested_ol != ""
          @ol = OrderLine.where(id: @nested_ol).take
          format.html { redirect_to @ol, notice: 'Tier was successfully created.' }
        else
          format.html { redirect_to @task, notice: 'Task was successfully created.' }
          format.json { render :show, status: :created, location: @task }
        end
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:order_line_id, :task_name, :task_description, :task_start_date, :task_due_date, :task_finish_date, :task_status_id, task_assignments_attributes: [:_destroy, :task_id, :employee_id])
    end

    def sort_column
      Task.column_names.include?(params[:sort]) ? params[:sort] : "task_name"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
