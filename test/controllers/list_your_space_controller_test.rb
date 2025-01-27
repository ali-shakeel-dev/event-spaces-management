require "test_helper"

class ListYourSpaceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_your_space_index_url
    assert_response :success
  end
end
