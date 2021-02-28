require 'test_helper'

class PrototypsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prototyps_index_url
    assert_response :success
  end

end
