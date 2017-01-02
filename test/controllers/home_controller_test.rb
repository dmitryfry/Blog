require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get contacts" do
    get home_contacts_url
    assert_response :success
  end

end
