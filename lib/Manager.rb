class Manager
    attr_accessor :department
    attr_reader :name, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age.to_i
        save
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|employee| employee.manager_name == self.name}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

    def self.all_departments
        Manager.all.map {|manager| manager.department}
    end
    
    def self.average_age
        Manager.total_ages / Manager.all.count
    end

    private

    def save
        @@all << self
    end

    def self.manager_ages
        Manager.all.map {|manager| manager.age}
    end

    def self.total_ages
        total = 0
        Manager.manager_ages.each {|age| total += age}
        total
    end
end
