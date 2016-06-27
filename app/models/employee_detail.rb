class EmployeeDetail < ActiveRecord::Base
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :designation, presence: true
end
