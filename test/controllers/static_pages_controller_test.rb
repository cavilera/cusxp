require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get organization" do
    get :organization
    assert_response :success
  end

  test "should get customer" do
    get :customer
    assert_response :success
  end

end
