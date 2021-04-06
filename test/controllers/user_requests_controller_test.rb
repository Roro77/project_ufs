require 'test_helper'

class UserRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_request = user_requests(:one)
  end

  test "should get index" do
    get user_requests_url, as: :json
    assert_response :success
  end

  test "should create user_request" do
    assert_difference('UserRequest.count') do
      post user_requests_url, params: { user_request: { date: @user_request.date, user_id: @user_request.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_request" do
    get user_request_url(@user_request), as: :json
    assert_response :success
  end

  test "should update user_request" do
    patch user_request_url(@user_request), params: { user_request: { date: @user_request.date, user_id: @user_request.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_request" do
    assert_difference('UserRequest.count', -1) do
      delete user_request_url(@user_request), as: :json
    end

    assert_response 204
  end
end
