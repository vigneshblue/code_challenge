class CreateEmployeeDetails < ActiveRecord::Migration
  def change
    create_table :employee_details do |t|
      t.string :name
      t.string :designation
      t.string :reporting_manager

      t.timestamps null: false
    end
  end
end
