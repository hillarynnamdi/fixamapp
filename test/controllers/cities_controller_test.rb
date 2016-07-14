require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  test "should get city:string" do
    get :city:string
    assert_response :success
  end

  test "should get state:references" do
    get :state:references
    assert_response :success
  end

end
