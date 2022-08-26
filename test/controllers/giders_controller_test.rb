require "test_helper"

class GidersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get giders_index_url
    assert_response :success
  end
end
