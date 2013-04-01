require 'test_helper'

describe "Pages Integration Test" do
  describe "home page" do
    describe "when login with correct password" do
      it "should display the home page" do
        basic_auth
        visit root_path
        assert_equal 200, page.status_code
        page.text.must_include "Real Estate"
      end
    end

    describe "when login with incorrect password" do
      it "should not display the home page" do
        basic_auth 'fake', 'fake'
        visit root_path
        assert_equal 401, page.status_code
      end
    end
  end
end
