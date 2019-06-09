class Manager

    attr_accessor :name, :age
    attr_reader :department
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age.to_i
        @@all << self
    end

    def self.department
        @department
    end

    def self.all
        @@all
    end

    def age
        @age
    end

    def employees
        Employee.all.select do |employee|
            employee.manager.name == self.name
        end
    end

    def hire_employee(name, salary)
        Employee.all << Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.collect do |manager|
            manager.department
        end
    end

    def self.average_age
       sum =  self.all.collect do |manager|
            manager.age.reduce(:+)
        end
        avg = sum / self.all.length
        return avg
    end

end
