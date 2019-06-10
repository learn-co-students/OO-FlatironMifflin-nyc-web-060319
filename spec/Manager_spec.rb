require_relative "../lib/Manager.rb"


RSpec.describe Manager do
    before(:all) do 
        @michael = Manager.new("Michael", "Regional Manager", 57)
        #@jim = Employee.new("Jim", 100_000, "Michael")
        @michael.hire_employee("Jim", 100_000)
        @dwight = Manager.new("Dwight", "Sales", 47)
    end

    it "Can be initialized" do 
        expect(@michael).to be_an_instance_of(Manager)
    end

    it "Has an #all method" do
        expect(Manager.all).to be_an_instance_of(Array)
    end

    it "Properly initializes @@all with new instances" do
        expect(Manager.all).to include(@michael)
        #expect(Manager.all).to include(@other_employee)
    end

    it "Has an accessible name" do
        expect(@michael.name).to eq("Michael")
    end

    it "Keeps track of all of its employees" do
        expect(@michael.employees.length).to be > 0
        expect(@michael.employees[0].name).to eq("Jim")
    end

    it "Knows the average age" do 
        expect(Manager.average_age).to eq(52.to_f)
    end

    it "Knows all departments" do
        expect(Manager.all_departments).to include("Regional Manager")
        expect(Manager.all_departments).to include("Sales")
    end
end