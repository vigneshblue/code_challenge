class AddIndexToEmployeeDetailsName < ActiveRecord::Migration
  def change
  	add_index :Employee_Details, :name, unique: true
  end
end
