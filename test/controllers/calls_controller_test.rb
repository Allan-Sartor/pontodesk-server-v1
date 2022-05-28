require "test_helper"

class CallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call = calls(:one)
  end

  test "should get index" do
    get calls_url, as: :json
    assert_response :success
  end

  test "should create call" do
    assert_difference("Call.count") do
      post calls_url, params: { call: { anydesk_number: @call.anydesk_number, call_status: @call.call_status, description: @call.description, image_url: @call.image_url, priority_level: @call.priority_level, user_id: @call.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show call" do
    get call_url(@call), as: :json
    assert_response :success
  end

  test "should update call" do
    patch call_url(@call), params: { call: { anydesk_number: @call.anydesk_number, call_status: @call.call_status, description: @call.description, image_url: @call.image_url, priority_level: @call.priority_level, user_id: @call.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy call" do
    assert_difference("Call.count", -1) do
      delete call_url(@call), as: :json
    end

    assert_response :no_content
  end
end
