class EmployeesController < ApplicationController
  def index
  	@employees = Employee.all
  end

  def new
  	@employee = Employee.new
  end

  def create
  	@employee = Employee.create(params_emp)
  	redirect_to employees_path
  end
  

  def edit
  	@employee = Employee.find(params[:id])
  end

  def update 
  	@employee = Employee.find(params[:id])
  	@employee.update(params_emp)
  	redirect_to employees_path
  end

  def destroy
  	@employee = Employee.find(params[:id])
  	@employee.destroy
  	redirect_to employees_path
  end
  private

  def params_emp
  	params.require(:employee).permit(:name, :salary)
  end
end
