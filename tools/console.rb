require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# Student Class Instances(first_name)
spongebob = Student.new("SpongeBob Squarepants")
sandy = Student.new("Sandy")
gary = Student.new("Gary")

# Instructor Class Instances(name)
puff = Instructor.new("Mrs Puff")
krabs = Instructor.new("Mr Krabs")
squidward = Instructor.new("Squidward")


# BoatingTest Class Instances(student, boating_test_name, boating_test_status, instructor)
permit = BoatingTest.new(spongebob, "Permit", "Failed", puff)
motorcycle = BoatingTest.new(spongebob, "Motorcycle", "Failed", puff)
class_d = BoatingTest.new(sandy, "Class D", "Passed", krabs)
truck = BoatingTest.new(gary, "Truck", "Passed", squidward)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
