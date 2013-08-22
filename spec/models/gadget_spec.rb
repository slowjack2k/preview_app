require 'spec_helper'

describe Gadget do
  [:name].each do |attribute|
    it "should have attribute #{attribute}" do
      gadget = Gadget.new
      gadget.should respond_to attribute
    end
  end
end
