require_relative 'spec_helper'

describe 'Teacher' do
  before(:each) do
    @teacher = Teacher.new(39, 'Tom', 'Biology')
  end

  it '#new object to be from the correct class' do
    @teacher.should be_an_instance_of Teacher
  end
end
