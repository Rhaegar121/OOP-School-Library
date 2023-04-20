require_relative "spec_helper"

describe "Student" do
  before(:each) do
    @student = Student.new(Classroom, 12, "Tom", true)
  end

  describe "#new object to be from the correct class" do
    @student.should be_an_instance_of Student
  end
end
