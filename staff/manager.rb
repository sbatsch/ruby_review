require_relative "./employee.rb"
require_relative "./reportable.rb"

module Actualize 
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
      # index = 0 
      # while index < employees.length 
        # puts employees[index].give_annual_raise
        # index = index + 1 
        #employee.salary= employee.salary * 1.05
        employees.each { |employee| employee.give_annual_raise } 
    end

   
      # input: emplohyees array, example: Array of Employee Objects, [#<Employee 1> #<Employee 2>]
      # output or effect: change active status to false for each of this manager's employees 


      # steps
      # 1- access the employees one at a time
      # 2- change their status of active from true to false
      # 3 Laugh maniacally 
    def fire_all_employees

      index = 0 

      while index < employees.length 
        puts employees[index].active = false
        index = index + 1 
      end
    end  
  end
end 



