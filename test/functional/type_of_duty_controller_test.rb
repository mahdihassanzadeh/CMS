require 'test_helper'

class TypeOfDutyControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get user" do
    get :user
    assert_response :success
  end

end
