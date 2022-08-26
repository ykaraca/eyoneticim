require "test_helper"

class DairesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daires_index_url
    assert_response :success
  end

  test "should get show" do
    get daires_show_url
    assert_response :success
  end

  test "should get new" do
    get daires_new_url
    assert_response :success
  end

  test "should get edit" do
    get daires_edit_url
    assert_response :success
  end
end
