require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new("michael", "office", "43")
kristyn = Manager.new("kristen", "house", 37)
dwight = michael.hire_employee("dwight", "10000")
jim = michael.hire_employee("jim", 9000)
pam = michael.hire_employee("pam", 25000)
andy = michael.hire_employee("andy", 11000)
toby = michael.hire_employee("toby", 5)
gerg = kristyn.hire_employee("gerg", 999999999)
favorite = kristyn.hire_employee("kylee", 999999998)
colin = kristyn.hire_employee("colin", 50000)
steven = kristyn.hire_employee("steven", 75000)



binding.pry
puts "done"
