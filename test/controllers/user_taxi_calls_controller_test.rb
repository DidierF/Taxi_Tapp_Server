require 'test_helper'

class UserTaxiCallsControllerTest < ActionController::TestCase
  setup do
    @user_taxi_call = user_taxi_calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_taxi_calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_taxi_call" do
    assert_difference('UserTaxiCall.count') do
      post :create, user_taxi_call: {  }
    end

    assert_redirected_to user_taxi_call_path(assigns(:user_taxi_call))
  end

  test "should show user_taxi_call" do
    get :show, id: @user_taxi_call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_taxi_call
    assert_response :success
  end

  test "should update user_taxi_call" do
    patch :update, id: @user_taxi_call, user_taxi_call: {  }
    assert_redirected_to user_taxi_call_path(assigns(:user_taxi_call))
  end

  test "should destroy user_taxi_call" do
    assert_difference('UserTaxiCall.count', -1) do
      delete :destroy, id: @user_taxi_call
    end

    assert_redirected_to user_taxi_calls_path
  end
end
