require_relative 'spec_helper'

describe CapitalizeDecorator do
    before(:each) do
      @capitalize_decorator = CapitalizeDecorator.new('Rachel')
    end
  
    it 'Create capitalize_decorator instance' do
      expect(@capitalize_decorator).to be_an_instance_of(CapitalizeDecorator)
    end
end