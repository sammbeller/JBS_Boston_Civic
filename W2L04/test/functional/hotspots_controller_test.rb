require 'test_helper'

class HotspotsControllerTest < ActionController::TestCase
  setup do
    @hotspot = hotspots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotspots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotspot" do
    assert_difference('Hotspot.count') do
      post :create, hotspot: { number_reports: @hotspot.number_reports, range: @hotspot.range }
    end

    assert_redirected_to hotspot_path(assigns(:hotspot))
  end

  test "should show hotspot" do
    get :show, id: @hotspot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotspot
    assert_response :success
  end

  test "should update hotspot" do
    put :update, id: @hotspot, hotspot: { number_reports: @hotspot.number_reports, range: @hotspot.range }
    assert_redirected_to hotspot_path(assigns(:hotspot))
  end

  test "should destroy hotspot" do
    assert_difference('Hotspot.count', -1) do
      delete :destroy, id: @hotspot
    end

    assert_redirected_to hotspots_path
  end
end
