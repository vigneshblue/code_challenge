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
  	
  end

  def show
  	
  end
end
