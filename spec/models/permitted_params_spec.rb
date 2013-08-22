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
          }
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
end
