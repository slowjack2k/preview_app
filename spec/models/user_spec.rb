require 'spec_helper'

describe User do
  it "should have many gadgets" do
    t = User.reflect_on_association(:gadgets)
    t.macro.should == :has_many
  end
end
