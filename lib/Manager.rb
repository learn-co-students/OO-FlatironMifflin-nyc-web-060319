class Manager

    attr_accessor :name, :department, :age, :employees

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary, @name)
        employees << new_employee
    end

    def self.all
        @@all
    end

    def self.all=(val)
        @@all = val
    end
    
    def self.average_age
        total_age = 0
        @@all.each do |manager|
            #binding.pry
            total_age += manager.age
        end
        #binding.pry
        average = (total_age.to_f / @@all.length.to_f)
        average
    end

    def self.all_departments
        @@all.map do |manager|
            manager.department
        end
    end
end
