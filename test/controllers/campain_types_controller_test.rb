require 'test_helper'

class CampainTypesControllerTest < ActionController::TestCase
  setup do
    @campain_type = campain_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campain_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campain_type" do
    assert_difference('CampainType.count') do
      post :create, campain_type: { campain_id_id: @campain_type.campain_id_id, name: @campain_type.name }
    end

    assert_redirected_to campain_type_path(assigns(:campain_type))
  end

  test "should show campain_type" do
    get :show, id: @campain_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campain_type
    assert_response :success
  end

  test "should update campain_type" do
    patch :update, id: @campain_type, campain_type: { campain_id_id: @campain_type.campain_id_id, name: @campain_type.name }
    assert_redirected_to campain_type_path(assigns(:campain_type))
  end

  test "should destroy campain_type" do
    assert_difference('CampainType.count', -1) do
      delete :destroy, id: @campain_type
    end

    assert_redirected_to campain_types_path
  end
end
