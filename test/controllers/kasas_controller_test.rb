require "test_helper"

class KasasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kasas_index_url
    assert_response :success
  end
end
