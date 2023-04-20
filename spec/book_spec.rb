require_relative 'spec_helper'

describe 'Book' do
  before(:each) do
    @book = Book.new('Title', 'Author')
  end

  describe 'title' do
    it 'returns the correct title' do
      expect(@book.title).to eql 'Title'
    end
  end

  describe 'author' do
    it 'returns the correct author' do
      expect(@book.author).to eql 'Author'
    end
  end
end
