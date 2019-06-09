class Employee
    attr_accessor :name, :salary, :manager_name
    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary.to_i
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        self.all.select do |employee|
            employee.salary > num
        end
    end

    def self.find_by_department(dept)
        manager = Manager.employees.find do |manager|
            manager.department.downcase = dept.downcase
        end
        self.all.find do |employee|
            employee.manager_name == manager.name
        end
    end

    def tax_bracket
        self.all.select do |employee|
            (employee.salary - self.salary).abs <= 1000
        end
    end

end
