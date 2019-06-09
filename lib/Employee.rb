class Employee


    @@all = []

    attr_accessor :salary, :manager

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        manager.name
    end

    def tax_bracket
        @@all.select do |employee|
            employee.salary > self.salary - 1000 && employee.salary < self.salary + 1000
        end
    end

    def self.all
        @@all
    end

    def self.paid_over(amt)
        @@all.select do |employee|
            employee.salary > amt
        end
    end

    def self.find_by_department(dept)
        @@all.find do |employee|
            employee.manager.department == dept
        end
    end
end
