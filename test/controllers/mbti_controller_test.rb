require "test_helper"

class MbtiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mbti_index_url
    assert_response :success
  end

  test "should get show" do
    get mbti_show_url
    assert_response :success
  end
end
