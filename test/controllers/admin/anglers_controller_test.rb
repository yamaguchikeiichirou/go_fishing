require "test_helper"

class Admin::AnglersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_anglers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_anglers_show_url
    assert_response :success
  end
end
