class EmployeeDetail < ActiveRecord::Base
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :designation, presence: true
	belongs_to :reporting_details, :class_name => "EmployeeDetail", :foreign_key => "reporting_manager"

end
