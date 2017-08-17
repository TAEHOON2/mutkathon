require 'test_helper'

class WoonjangControllerTest < ActionDispatch::IntegrationTest
  test "should get testpage" do
    get woonjang_testpage_url
    assert_response :success
  end

end
