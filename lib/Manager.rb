class Manager

    @@all = []

    attr_reader :name
    attr_accessor :age, :department

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        return Employee.select do |employee|
            employee.manager == self
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all 
        return @@all
    end

    def self.all_departments
        return self.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        ages = @@all.map do |manager|
            manager.age
        end

        ages.sum / ages.size.to_f
    end


end
