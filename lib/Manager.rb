class Manager
  
    attr_reader :name, :age, :department
    @@all = []
    def initialize(name,age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
       departments =  all.map {|manager| manager.department}
       departments.uniq
    end
end
