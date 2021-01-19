require 'test_helper'

class ThumbnailImgControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thumbnail_img_index_url
    assert_response :success
  end

end
