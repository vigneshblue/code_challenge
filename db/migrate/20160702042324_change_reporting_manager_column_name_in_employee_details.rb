class ChangeReportingManagerColumnNameInEmployeeDetails < ActiveRecord::Migration[5.0]
  def change
  	change_column :Employee_Details, :reporting_manager, :integer
  	rename_column :Employee_Details, :reporting_manager, :manager_id
  end
end
