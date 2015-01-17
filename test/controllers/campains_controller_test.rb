require 'test_helper'

class CampainsControllerTest < ActionController::TestCase
  setup do
    @campain = campains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campain" do
    assert_difference('Campain.count') do
      post :create, campain: { campain_description: @campain.campain_description, campain_type: @campain.campain_type, cost: @campain.cost, end_data: @campain.end_data, end_income: @campain.end_income, expected_income: @campain.expected_income, name: @campain.name, start_data: @campain.start_data, status: @campain.status }
    end

    assert_redirected_to campain_path(assigns(:campain))
  end

  test "should show campain" do
    get :show, id: @campain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campain
    assert_response :success
  end

  test "should update campain" do
    patch :update, id: @campain, campain: { campain_description: @campain.campain_description, campain_type: @campain.campain_type, cost: @campain.cost, end_data: @campain.end_data, end_income: @campain.end_income, expected_income: @campain.expected_income, name: @campain.name, start_data: @campain.start_data, status: @campain.status }
    assert_redirected_to campain_path(assigns(:campain))
  end

  test "should destroy campain" do
    assert_difference('Campain.count', -1) do
      delete :destroy, id: @campain
    end

    assert_redirected_to campains_path
  end
end
