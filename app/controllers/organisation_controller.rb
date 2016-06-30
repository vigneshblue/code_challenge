class OrganisationController < ApplicationController
  def home
  end

  def table
  	@employee = EmployeeDetail.all

  end

  def list
  	@employee1 = EmployeeDetail.all
  end

 

  def show
  	
  end
end
