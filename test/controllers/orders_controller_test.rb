require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get first_form" do
    get :first_form
    assert_response :success
  end

  test "should get second_form" do
    get :second_form
    assert_response :success
  end

  test "should get third_form" do
    get :third_form
    assert_response :success
  end

  test "should get fourth_form" do
    get :fourth_form
    assert_response :success
  end

end
