require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
Manager1 = Manager.new("Chett", 20000, "Mod1")
Manager2 = Manager.new("Vicky", 20000, "Mod1")
Manager3 = Manager.new("Larissa", 20000, "Mod1")
Employee1 = Employee.new("Harpreet", 10000, Manager1)
Employee2 = Employee.new("Bill", 10000, Manager2)
Employee3 = Employee.new("Alex", 10000, Manager2)
Employee4 = Employee.new("Tori", 10000, Manager3)

binding.pry
puts "done"
