require "pry"


class Employee
	attr_accessor :name

	def initialize(name,email)
		@name = name
		@email = email
	end
end

class HourlyEmployee < Employee
	
	def initialize(name,email,cost_hour,work_hours)
		super(name,email)
		@cost_hour = cost_hour
		@work_hours = work_hours
		@salary = 0
	end

	def calculate_salary
			@salary = @cost_hour * @work_hours
	end

end

class SalariedEmployee < Employee
	
	def initialize(name,email,year_salary)
		super(name,email)
		@year_salary = year_salary
	end

	def calculate_salary
		@salary = @year_salary / 52
	end
end

class MultiPaymentEmployee < SalariedEmployee

	def initialize(name,email,salary,cost_hour,work_hours)
		super(name,email,salary)
		@cost_hour = cost_hour
		@work_hours = work_hours
		@salary_extra_hours = 0
	end

	def calculate_salary
		@base = super
		if @work_hours > 40
			@salary_extra_hours = @cost_hour * (@work_hours - 40)
		end
		@salray = @base + @salary_extra_hours
	end


end

class Payroll

	def initialize(employees)
		@employees = employees
	end

	def pay_employees
		#@list_salary = @employees.each do |employee|
		#	puts "# #{employee.name} => $#{employee.calculate_salary}"
		#end
	end
end

employees = [
josh = HourlyEmployee.new("Josh", "nachoemail@example.com", 35, 50),
nizar = SalariedEmployee.new("Nizar", "starcrafrulez@gmail.com", 100000),
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55),
raul = HourlyEmployee.new("Raúl", "raul@gmail.com", 15, 43),
christian = HourlyEmployee.new("Christian", "christian@gmail.com", 15, 23)
]

payroll = Payroll.new(employees)
payroll.pay_employees

binding.pry
