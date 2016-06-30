class EmployeeDetailsController < ApplicationController
  def new
  	@employee_detail = EmployeeDetail.new
    @employee = EmployeeDetail.all
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

  def show
    @employee_detail = EmployeeDetail.find(params[:id])
   
  end

  def edit
    @employee_detail = EmployeeDetail.find(params[:id])
     @employee = EmployeeDetail.all
  end

  def update
     @employee_detail = EmployeeDetail.find(params[:id])
     @employee = EmployeeDetail.all
     #@manager = EmployeeDetail.find_by(reporting_manager: @employee)
     if @employee_detail.update_attributes(emp_params)
     # @manager.update_attributes(manager_params)
      flash[:success] = "Updated Successfully"

      redirect_to @employee_detail
     else
      render 'edit'
    end
  end


  private

  		def emp_params
  			params.require(:employee_detail).permit(:name, :designation, :reporting_manager)
  	end
    def manager_params
      params.require(:employee_detail).permit(:reporting_manager)
    end

end
