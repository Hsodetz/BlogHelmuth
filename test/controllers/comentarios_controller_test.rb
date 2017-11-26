require 'test_helper'

class ComentariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comentarios_index_url
    assert_response :success
  end

  test "should get show" do
    get comentarios_show_url
    assert_response :success
  end

  test "should get new" do
    get comentarios_new_url
    assert_response :success
  end

  test "should get create" do
    get comentarios_create_url
    assert_response :success
  end

  test "should get edit" do
    get comentarios_edit_url
    assert_response :success
  end

  test "should get update" do
    get comentarios_update_url
    assert_response :success
  end

  test "should get destroy" do
    get comentarios_destroy_url
    assert_response :success
  end

end
