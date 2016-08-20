require 'test_helper'

class AdmindashboardControllerTest < ActionController::TestCase
  test "should get bookings" do
    get :bookings
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get stats" do
    get :stats
    assert_response :success
  end

end
