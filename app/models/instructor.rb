class Instructor

attr_accessor :name


@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end


# should take in a student name and test name and return status passed
def self.pass_student(student_name, test_name)
  BoatingTest.all.select do |boating_test_ob|
    if boating_test_ob.student == student_name &&
      boating_test_ob.boating_test_name == test_name &&
      boating_test_ob.boating_test_status == "Passed"
        return boating_test_ob.boating_test_status
    elsif boating_test_ob.student == student_name &&
      boating_test_ob.boating_test_name == test_name &&
      boating_test_ob.boating_test_status == "Failed"
        return "#{student_name.first_name} has not passed the #{test_name} test. Eat more Krabby Pattys"
    end
  end
end # end of pass_student Class Method


# should take in a student name and test name and return status failed
def self.fail_student(student_name, test_name)
  BoatingTest.all.select do |boating_test_ob|
    if boating_test_ob.student == student_name &&
      boating_test_ob.boating_test_name == test_name &&
      boating_test_ob.boating_test_status == "Failed"
        return boating_test_ob.boating_test_status
    elsif boating_test_ob.student == student_name &&
      boating_test_ob.boating_test_name == test_name &&
      boating_test_ob.boating_test_status == "Passed"
        return "#{student_name.first_name} has not taken the #{test_name} test. Eat more Krabby Pattys"
    end
  end
end # end of fail_student Class Method


# should take in a student first name and
# output the percentage of tests that they have passed
def self.student_grade_percentage(student_name)
  student_tests = BoatingTest.all.select do |boating_test_ob|
    boating_test_ob.student == student_name
      #binding.pry
    end
  total_tests = student_tests.length.to_f
  passed_tests = student_tests.select do |boating_test_ob|
    #binding.pry
    boating_test_ob.boating_test_status == "Passed"
  end
  number_passed = passed_tests.length.to_f
  percentage = (number_passed/total_tests)*100
end #end of .student_grade_percentage Class Method



end #end of Instructor Class
