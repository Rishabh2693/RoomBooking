require 'test_helper'

class AdminsessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get adminsessions_new_url
    assert_response :success
  end

  test "should get create" do
    get adminsessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get adminsessions_destroy_url
    assert_response :success
  end

end
