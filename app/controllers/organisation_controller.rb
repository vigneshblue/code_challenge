class OrganisationController < ApplicationController
  def home
  end

  def table
  	@employee = EmployeeDetail.all

  end

  def list
  	@employee = EmployeeDetail.all
  end

  def tree
  	@employee = EmployeeDetail.all
  end

  def show
  	
  end
end
