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

module Reportable 
  def send_report
    puts "Sending Emai..."
    #code to send Email
    puts "Email sent."
  end
end 

class Manager < Employee
  include Reportable 
  attr_reader :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

    #input: employees array, example: Array of employee objects [#<Employee 1>, #<Employee 2>]
    #output or effect: increase salary of all employees for this manager by 105%. 

    # steps
    # 1- take employees for this manager one at a time
    # 2- increase salary for the individual employee by multiplying their salary by 105%. 

  def give_all_raises 
    employees.each { |employee| employee.give_annual_raise } 
  end
end  
