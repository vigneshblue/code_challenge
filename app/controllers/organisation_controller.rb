class OrganisationController < ApplicationController
  def home
  end

  def table
  	@employee = EmployeeDetail.all
  end

  def list
  end

  def show
  end
end
