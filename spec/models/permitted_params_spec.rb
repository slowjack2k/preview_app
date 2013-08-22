require 'spec_helper'

describe PermittedParams do

  let!(:params){
    ActionController::Parameters.new(
      {
          :user => {
              :login => "test_login",
              :password => "1235678",
              :error => true
          },
          :session => {
              :login => "test_login",
              :password => "1235678",
              :error => true
          },

          :gadget => {
              :name => "gadget name"
          },

          :user_id => 1
      }
    )
  }

  subject {
    PermittedParams.new(params)
  }

  describe ".user" do
    it "should allowed attributes" do
      subject.user.should include :login, :password
    end

    it "should not return forbidden parameter" do
      subject.user.should_not include :error
    end
  end

  describe ".session" do
    it "should allowed attributes" do
      subject.session.should include :login, :password
    end

    it "should not return forbidden parameter" do
      subject.session.should_not include :error
    end
  end

  describe ".gadget" do
    it "should allowed attributes" do
      subject.gadget.should include :name
    end

    it "should not return forbidden parameter" do
      subject.gadget.should_not include :error
    end
  end
end
