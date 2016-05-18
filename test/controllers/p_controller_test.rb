require 'test_helper'

class PControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get firstbooking" do
    get :firstbooking
    assert_response :success
  end

  test "should get bookingform" do
    get :bookingform
    assert_response :success
  end

  test "should get formwithmodal" do
    get :formwithmodal
    assert_response :success
  end

  test "should get currentstatus" do
    get :currentstatus
    assert_response :success
  end

  test "should get styleexamplemodal" do
    get :styleexamplemodal
    assert_response :success
  end

  test "should get orderlist" do
    get :orderlist
    assert_response :success
  end

end
