require "test_helper"

class MyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get my_show_url
    assert_response :success
  end
end
