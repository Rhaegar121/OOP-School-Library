require_relative 'spec_helper'

describe Rental do
  before(:each) do
    @person = Person.new(25, 'Ross', 'parent_permission')
    @book = Book.new('Harry Potter', 'JK Rowling')
  end

  it 'Create a rental' do
    @rental = Rental.new('2023-04-20', @person, @book)
    expect(@rental.date).to eq('2023-04-20')
    expect(@rental.book).to eq(@book)
    expect(@rental.person).to eq(@person)
  end
end
