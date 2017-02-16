require 'test_helper'

class FmtControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fmt_index_url
    assert_response :success
  end

end
