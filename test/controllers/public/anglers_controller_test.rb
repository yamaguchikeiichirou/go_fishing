require "test_helper"

class Public::AnglersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_anglers_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_anglers_edit_url
    assert_response :success
  end

  test "should get verification" do
    get public_anglers_verification_url
    assert_response :success
  end
end
