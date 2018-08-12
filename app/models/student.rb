class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end


  # should initialize a new boating test with a student (Object),
  # a boating test name (String), a boating test status (String),
  # and an Instructor (Object)
  def add_boating_test(boating_test_name, boating_test_status, instructor)
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end # end of add_boating_test


  # will take in a student first name and output that student
  def self.find_student(name)
    self.all.select do |student_ob|
      #binding.pry
        student_ob.first_name == name.first_name
    end
  end # end of find_student Class Method


end # end of Student Class
