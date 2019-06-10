require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
employee = Employee.new("Jim", 100_000, "Dwight")
other_employee = Employee.new("Pam", 99_500, "Dwight")
stanley = Employee.new("Stanley", 200_000, "Dwight") 


binding.pry
puts "done"
