require 'spec_helper'

describe PermittedParams do

  let!(:params){
    ActionController::Parameters.new(
      {
          :user => {
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

    it "should return nothing with a not allowed parameter" do
      subject.user.should_not include :error
    end
  end
end
