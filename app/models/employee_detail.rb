class EmployeeDetail < ActiveRecord::Base
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :designation, presence: true
	belongs_to :manager, :class_name => "EmployeeDetail", :foreign_key => "manager_id"
end
