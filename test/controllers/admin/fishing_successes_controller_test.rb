require "test_helper"

class Admin::FishingSuccessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_fishing_successes_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_fishing_successes_show_url
    assert_response :success
  end
end
