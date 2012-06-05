require 'test_helper'

class REportsControllerTest < ActionController::TestCase
  setup do
    @r_eport = r_eports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_eports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_eport" do
    assert_difference('REport.count') do
      post :create, r_eport: { email: @r_eport.email, name: @r_eport.name }
    end

    assert_redirected_to r_eport_path(assigns(:r_eport))
  end

  test "should show r_eport" do
    get :show, id: @r_eport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_eport
    assert_response :success
  end

  test "should update r_eport" do
    put :update, id: @r_eport, r_eport: { email: @r_eport.email, name: @r_eport.name }
    assert_redirected_to r_eport_path(assigns(:r_eport))
  end

  test "should destroy r_eport" do
    assert_difference('REport.count', -1) do
      delete :destroy, id: @r_eport
    end

    assert_redirected_to r_eports_path
  end
end
