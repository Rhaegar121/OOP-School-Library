require_relative 'spec_helper'

describe 'Person' do
  before(:each) do
    @person = Person.new(12, 'Peter', false)
  end

  describe 'name' do
    it 'returns the correct name' do
      expect(@person.name).to eql 'Peter'
    end
  end

  describe 'age' do
    it 'returns the correct age' do
      expect(@person.age).to eql 12
    end
  end

  describe 'parent_permission' do
    it 'returns the correct parent_permission' do
      expect(@person.parent_permission).to be false
    end
  end
end
