class Manager

attr_accessor :name, :department, :age

@@all = []

def initialize(name, department, age)
  @name = name
  @department = department
  @age = age
  @@all << self
end

def employees
  array = Employee.all.select do |emp|
    self == emp.manager
  end
  return array
end

def self.all
  @@all
end

def hire_employee(name, salary)
  Employee.new(name, salary, self)
end

def self.all_departments
  array = []
  self.all.each do |man|
    array << man.department
  end
  return array
end

def self.average_age
  array = []
  self.all.each do |man|
    array << man.age
  end
  total = array.reduce(:+).to_f
  return total / array.length.to_f
end















end
