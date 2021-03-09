class Employee

    attr_reader :name

    def name=(name)
        if name == ""
            raise "Name can't be blank!"
        end
        @name = name
    end

    def initialize(name = "Anonymous")
        self.name = name
    end

    def print_name
        puts "Name: #{name}"
    end
end

class SalariedEmployee < Employee

    attr_reader :salary

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid!"
        end
        @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (salary / 365.0) * 14
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{formatted_pay}"
    end
end

class HourlyEmployee < Employee

    attr_reader :hourly_wage, :hours_per_week
    
    def self.security_guard(name)
        HourlyEmployee.new(name, 19.25, 30)
    end

    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end

   def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "Hourly wage #{hourly_wage} is invalid value!"
        end
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        if hours_per_week < 0
            raise "Hours per week #{hours_per_week} isn't valid!"
        end
       @hours_per_week = hours_per_week
    end

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_per_week * 2
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{formatted_pay}"
    end
end

#salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
#hourly_employee = HourlyEmployee.new("John Smith", 14.97, 40)
#salaried_employee.print_pay_stub
#hourly_employee.print_pay_stub

jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
edwin = HourlyEmployee.janitor("Edwin Burgess")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub
