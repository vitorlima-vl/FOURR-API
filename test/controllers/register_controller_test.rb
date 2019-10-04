require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should create new" do
    get register_new_url
    assert_response :success
  end

end
