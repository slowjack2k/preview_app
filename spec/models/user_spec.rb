require 'spec_helper'

describe User do
  it "should own many gadgets" do
    t = User.reflect_on_association(:gadgets)
    t.macro.should == :has_many
  end

  [:login, :password].each do |attribute|
     it "should have attribute #{attribute}" do
       user = User.new
       user.should respond_to attribute
     end
  end

end
