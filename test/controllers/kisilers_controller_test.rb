require "test_helper"

class KisilersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kisilers_index_url
    assert_response :success
  end
end
