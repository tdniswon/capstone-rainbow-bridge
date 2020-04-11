class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /employees
  # GET /employees.json
  def index
    #@pagy,@employees = pagy(Employee.where.not(employee_status_id: 3 ).order(sort_column + ' ' + sort_direction))
    @q = Employee.where.not(employee_status_id: 3).ransack(params[:q])
    @pagy, @employees = pagy(@q.result)
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def archive
    @employee = Employee.find params[:id]
    @employee.update(employee_status_id: 3)
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully Archived.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_params
      params.require(:employee).permit(:employee_first_name, :employee_last_name, :employee_email, :employee_phone, :employee_status_id, :employee_type_id)
    end

    def sort_column
      Employee.column_names.include?(params[:sort]) ? params[:sort] : "employee_first_name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
