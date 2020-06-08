require 'test_helper'

class MyopinionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myopinions_index_url
    assert_response :success
  end

  test "should get show" do
    get myopinions_show_url
    assert_response :success
  end

  test "should get new" do
    get myopinions_new_url
    assert_response :success
  end

  test "should get edit" do
    get myopinions_edit_url
    assert_response :success
  end

end
