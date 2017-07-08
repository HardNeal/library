require 'test_helper'

class ImgursControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get imgurs_create_url
    assert_response :success
  end

end
