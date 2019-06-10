require_relative "../lib/Employee.rb"

RSpec.describe Employee do
    before(:all) do
        @employee = Employee.new("Jim", 100_000, "Dwight")
        @other_employee = Employee.new("Pam", 99_500, "Dwight")
        @stanley = Employee.new("Stanley", 200_000, "Dwight") 
    end

    it "Can be initialized" do 
        expect(@employee).to be_an_instance_of(Employee)
    end

    it "Has an #all method" do
        expect(Employee.all).to be_an_instance_of(Array)
    end

    it "Properly initializes @@all with new instances" do
        expect(Employee.all).to include(@employee)
        expect(Employee.all).to include(@other_employee)
    end

    it "Has an accessible name" do
        expect(@employee.name).to eq("Jim")
    end
    
    it "Knows it's own manager" do
        expect(@employee.manager_name).to eq("Dwight")
    end

    it "#paid_over returns an array " do
        expect(@employee.paid_over).to be_an_instance_of(Array)
    end

    it "#paid_over returns employees paid more than them" do
        expect(@other_employee.paid_over).to include(@employee)
    end

    it "#find_by_department" do
        expect(false).to eq(true)
    end

    it "#tax_bracket returns all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method" do
        expect(@employee.tax_bracket).to include(@other_employee)
        expect(@other_employee.tax_bracket).to include(@employee)
        expect(@employee.tax_bracket).not_to include(@stanley)
    end


end