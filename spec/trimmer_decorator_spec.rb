require_relative 'spec_helper'

describe TrimmerDecorator do
  before(:each) do
    @trimmer_decorator = TrimmerDecorator.new('Phoebe')
  end

  it 'Create trimmer_decorator instance' do
    expect(@trimmer_decorator).to be_an_instance_of(TrimmerDecorator)
  end
end
