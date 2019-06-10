require "pry"

class Employee
    attr_accessor :name, :salary, :manager_name
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager_name = manager
        #binding.pry
        @@all << self
    end

    def self.all
        @@all
    end

    def paid_over
        paid_over_employees = []
        @@all.each do |employee|
            if employee != self
                if employee.salary > @salary
                    paid_over_employees << employee
                end
            end
        end
        paid_over_employees
    end


    def tax_bracket
        other_tax_bracket_employees = []
        @@all.each do |employee|
            if employee != self
                if employee.salary <= (@salary + 1000)
                    if employee.salary >= (@salary - 1000)
                        #binding.pry
                        other_tax_bracket_employees << employee
                    end
                end
            end
        end
        other_tax_bracket_employees
    end
end
