require 'test_helper'

class LibraryMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_member = library_members(:one)
  end

  test "should get index" do
    get library_members_url
    assert_response :success
  end

  test "should get new" do
    get new_library_member_url
    assert_response :success
  end

  test "should create library_member" do
    assert_difference('LibraryMember.count') do
      post library_members_url, params: { library_member: { email: @library_member.email, name: @library_member.name, password: @library_member.password } }
    end

    assert_redirected_to library_member_url(LibraryMember.last)
  end

  test "should show library_member" do
    get library_member_url(@library_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_library_member_url(@library_member)
    assert_response :success
  end

  test "should update library_member" do
    patch library_member_url(@library_member), params: { library_member: { email: @library_member.email, name: @library_member.name, password: @library_member.password } }
    assert_redirected_to library_member_url(@library_member)
  end

  test "should destroy library_member" do
    assert_difference('LibraryMember.count', -1) do
      delete library_member_url(@library_member)
    end

    assert_redirected_to library_members_url
  end
end
