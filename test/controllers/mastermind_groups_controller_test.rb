require 'test_helper'

class MastermindGroupsControllerTest < ActionController::TestCase
  setup do
    @mastermind_group = mastermind_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mastermind_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mastermind_group" do
    assert_difference('MastermindGroup.count') do
      post :create, mastermind_group: {  }
    end

    assert_redirected_to mastermind_group_path(assigns(:mastermind_group))
  end

  test "should show mastermind_group" do
    get :show, id: @mastermind_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mastermind_group
    assert_response :success
  end

  test "should update mastermind_group" do
    patch :update, id: @mastermind_group, mastermind_group: {  }
    assert_redirected_to mastermind_group_path(assigns(:mastermind_group))
  end

  test "should destroy mastermind_group" do
    assert_difference('MastermindGroup.count', -1) do
      delete :destroy, id: @mastermind_group
    end

    assert_redirected_to mastermind_groups_path
  end
end
