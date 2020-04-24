class Employee
    attr_reader :name, :salary, :manager_name
    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary.to_i
        @manager_name = manager_name
        save
    end

    def self.all
        @@all
    end

    def self.paid_over(minimum)
        Employee.all.select {|employee| employee.salary > minimum}
    end

    def self.find_by_department(dep)
        (Employee.find_manager_by_department(dep)).employees.first
    end

    def tax_bracket
        Employee.all.select {|employee| employee.salary.between?((self.salary - 1000), (self.salary + 1000)) && employee != self}
    end

    private

    def self.find_manager_by_department(dep)
        Manager.all.find {|manager| manager.department == dep}
    end

    def save
        @@all << self
    end
end
