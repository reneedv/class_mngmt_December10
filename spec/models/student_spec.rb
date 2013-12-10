require 'spec_helper'

describe Student do

  it "should require an email" do
    student = Student.new
    student.should_not be_valid
  end

  it "should require a unique email" do
    Student.create(email: 'test@test.com')
    student = Student.new(email: 'test@test.com')
    student.valid?.should be_false
  end

end
