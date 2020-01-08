class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ first_name } #{ last_name } makes #{ salary } a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending Email..."
    # code to send Email
    puts "Email sent."
  end
  
  def give_all_raises 
    index = 0 
    while index < employees.length 
      puts employees[index].give_annual_raise
      index = index + 1 
    end 
  end

  def fire_all_employees
    index = 0 
    while index < employees.length 
      puts employees[index].active = false
      index = index + 1 
    end
  end  
end

employee_1 = Employee.new(
                          first_name: "Han", 
                          last_name: "Solo", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Lando", 
                          last_name: "Calrissian", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Leia",
                      last_name: "Organa",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

manager.give_all_raises
puts employee_1.salary
puts employee_2.salary
manager.fire_all_employees
puts employee_1.active
puts employee_2.active

