require 'test_helper'

class MiniBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mini_blogs_index_url
    assert_response :success
  end

end
