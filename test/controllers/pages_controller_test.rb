require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get landingpage" do
    get :landingpage
    assert_response :success
  end

  test "should get landingpage9" do
    get :landingpage9
    assert_response :success
  end

end
