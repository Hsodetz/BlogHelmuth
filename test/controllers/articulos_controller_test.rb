require 'test_helper'

class ArticulosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articulos_index_url
    assert_response :success
  end

  test "should get show" do
    get articulos_show_url
    assert_response :success
  end

  test "should get new" do
    get articulos_new_url
    assert_response :success
  end

  test "should get create" do
    get articulos_create_url
    assert_response :success
  end

  test "should get edit" do
    get articulos_edit_url
    assert_response :success
  end

  test "should get update" do
    get articulos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get articulos_destroy_url
    assert_response :success
  end

end
