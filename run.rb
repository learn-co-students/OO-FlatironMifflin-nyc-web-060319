require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here


#binding.pry
#puts "done"


bob = Manager.new("bob", "sales", 32)
jim = Manager.new("jim", "sales", 23)
joe = Manager.new("joe", "tax", 43)
mike = Manager.new("mike", "tax", 22)

david = Employee.new("david", 10, bob)
rob = Employee.new("rob", 15, jim)
brandon = Employee.new("brandon", -10000, joe)
tim = Employee.new("tim", 10000, joe)

# puts bob.name
# puts bob.department
# puts bob.age
# puts bob.employees.inspect
# puts Manager.all.inspect
# bob.hire_employee("john", 30)
# puts Employee.all.inspect
#puts Manager.all_departments.inspect
#puts Manager.average_age

# puts david.name
# puts david.salary
# puts david.manager_name
# puts Employee.all.inspect
#puts Employee.paid_over(15).inspect
#puts Employee.find_by_department("tax").inspect
puts david.tax_bracket.inspect
