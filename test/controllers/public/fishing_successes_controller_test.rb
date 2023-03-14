require "test_helper"

class Public::FishingSuccessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_fishing_successes_index_url
    assert_response :success
  end

  test "should get search" do
    get public_fishing_successes_search_url
    assert_response :success
  end

  test "should get show" do
    get public_fishing_successes_show_url
    assert_response :success
  end

  test "should get new" do
    get public_fishing_successes_new_url
    assert_response :success
  end
end
