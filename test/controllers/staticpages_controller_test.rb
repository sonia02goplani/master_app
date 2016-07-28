require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest  
    test "should_get_home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Master App"
  end
   test "should_get_about" do
    get root_path
    assert_response :success
    assert_select "title", "About | Master App"
  end

   test "should_get_help" do
    get root_path
    assert_response :success
    assert_select "title", "About | Master App"
  end
     test "should_get_contact" do
    get root_path
    assert_response :success
    assert_select "title", "About | Master App"
  end
     
end
