require_relative "spec_helper"

describe CapitalizeDecorator do
  before(:each) do
    @capitalize_decorator = CapitalizeDecorator.new("phoebe")
  end

  describe "name" do
    it "Create capitalize_decorator instance" do
      expect(@capitalize_decorator).to be_an_instance_of(CapitalizeDecorator)
    end

    it "returns the correct name" do
      expect(@capitalize_decorator.correct_name).to eql "Phoebe"
    end
  end
end
