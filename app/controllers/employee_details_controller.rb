class EmployeeDetailsController < ApplicationController
  def new
  	@employee_detail = EmployeeDetail.new
  end

  def create
  	#@emp = EmployeeDetail.new(params[:emp])
  	@employee_detail = EmployeeDetail.new(emp_params)
  	if @employee_detail.save
  		flash[:success] = "Employee added successfully"
      redirect_to table_url
  		
  	else
  		render 'new'
  	end
  end

  private

  		def emp_params
  			params.require(:employee_detail).permit(:name, :designation, :reporting_manager)
  	end
end
