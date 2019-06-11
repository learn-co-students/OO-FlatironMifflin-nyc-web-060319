class Employee

  attr_accessor :name, :salary, :manager

@@all = []

def initialize(name, salary, manager)
  @name = name
  @salary = salary
  @manager = manager
  @@all << self
end

def self.all
  @@all
end

def manager_name
  @manager.name
end

def self.paid_over(number)
  self.all.select do |emp|
      emp.salary > number
    end
  end

  def self.find_by_department(name)
    self.all.find do |emp|
      emp.manager.department == name
    end
  end

  def tax_bracket
    Employee.all.select do |emp|
      self.salary > emp.salary - 1000 && self.salary < emp.salary + 1000
    end
  end





end
