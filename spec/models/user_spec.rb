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

  describe ".authenticate" do
    subject {
      Fabricate(:user, login: "my login", password: "pw1")
    }

    it "should return true when the password is correct" do
      subject.authenticate("pw1").should be_true
    end

    it "should return false when the password is not correct" do
      subject.authenticate("pw2").should be_false
    end

  end

end
