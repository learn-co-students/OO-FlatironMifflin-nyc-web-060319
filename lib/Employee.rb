require_relative 'Manager'

class Employee
    @@all = []
    attr_reader :name, :salary, :manager
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary_over)
        all.select { |employee| employee.salary > salary_over}
    end

    def self.find_by_department(department_name)    
        all.find {|employee| employee.manager.department == department_name}
    end
end
