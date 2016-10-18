require 'test_helper'

class StylesControllerTest < ActionController::TestCase
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create style" do
    assert_difference('Style.count') do
      post :create, style: { color1: @style.color1, color2: @style.color2, color3: @style.color3, color4: @style.color4, color: @style.color, description: @style.description, location: @style.location, name: @style.name, stock: @style.stock, tribe: @style.tribe }
    end

    assert_redirected_to style_path(assigns(:style))
  end

  test "should show style" do
    get :show, id: @style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @style
    assert_response :success
  end

  test "should update style" do
    patch :update, id: @style, style: { color1: @style.color1, color2: @style.color2, color3: @style.color3, color4: @style.color4, color: @style.color, description: @style.description, location: @style.location, name: @style.name, stock: @style.stock, tribe: @style.tribe }
    assert_redirected_to style_path(assigns(:style))
  end

  test "should destroy style" do
    assert_difference('Style.count', -1) do
      delete :destroy, id: @style
    end

    assert_redirected_to styles_path
  end
end
