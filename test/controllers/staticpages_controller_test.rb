require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest  
    test "should_get_home" do
    get staticpages_home_url
    assert_response :success
    assert_select "title", "Home | Master_app"
  end
   test "should_get_about" do
    get staticpages_about_url
    assert_response :success
    assert_select "title", "About | Master_app"
  end


end
