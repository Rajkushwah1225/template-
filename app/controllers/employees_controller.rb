class EmployeesController < ApplicationController
  before_action :set_result, only: [ :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      # Send email notification after saving the employee
      EmployeeMailer.employee_created(@employee).deliver_later
      redirect_to employees_path 
    else
      render :new
    end
  end
  

  def show
  end

  def edit 
  end
  
  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy 
    @employee = Employee.find(params[:id])
    if @employee.destroy
      redirect_to employees_path, notice: 'Employee was successfully deleted.'
    else
      redirect_to employees_path, alert: 'There was an issue deleting the employee.'
    end
  end


  private

  def employee_params
    params.require(:employee).permit(:employee_name, :gender, :hobbies)
  end

  def set_result
    @employee = Employee.find(params[:id])
  end
end
