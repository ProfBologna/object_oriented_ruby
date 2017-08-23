# employee_1 = ["Jimmy", "Stewart", 70000, true]
# employee_2 = ["Susan", "Messing", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + "."
# puts "#{employee_1[0]} #{employee_1[1]} makes #{employee_1[2]}"

# employee_1 = {:first_name => "John", :last_name => "Stewart", :salary => 70000, :active => true} 

# employee_2 = {:first_name => "Susan", :last_name => "Messing", :salary => 80000, :active => true} 

# puts "#{employee_1[first_name]} #{employee_1["last_name"]} makes #{employee_1["salary"]}"

class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active =  input_options[:active]

end

  # def fist_name
  #   return @first_name
  # end

  # def last_name
  #   return @last_name
  # end

  # def active
  #   return @active
  # end


def print_info
  puts "#{@first_name} #{@last_name} makes #{@salary} a year."

  def give_annual_raise
    @salary = @salary * 1.05
  end

def active=(new_active)
  @active = new_active
end

  end
end


employee_1 = Employee.new(
                          first_name: "Jimmy", 
                          last_name: "Stewart", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Susan", 
                          last_name: "Messing",
                          salary: 80000, 
                          active: true
                          )


class Manager < Employee

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # code to send the email
    puts "Email sent."
  end
end

manager = Manager.new(
                      first_name: "Bob",
                      last_name: "Hoskins",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )


p employee_1
puts "---------------"
p manager
puts "---------------"
