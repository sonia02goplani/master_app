require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
 
 test "layouts links" do 

    get root_path
    assert_template 'staticpages/home'
    assert_select "a[href=?]" , root_path 
    assert_select "a[href=?]" , help_path
    assert_select "a[href=?]" , contact_path
    assert_select "a[href=?]" , about_path
get contact_path
    assert_select "title", full_title("Contact")
get help_path
    assert_select "title", full_title("Help")
get about_path
    assert_select "title", full_title("About")
get root_path
    assert_select "title", full_title("Home")

 	
 end
end
