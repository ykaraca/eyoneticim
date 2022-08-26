require "test_helper"

class AidatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aidats_index_url
    assert_response :success
  end
end
