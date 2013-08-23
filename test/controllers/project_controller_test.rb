require 'test_helper'

class ProjectControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get desarollo" do
    get :desarollo
    assert_response :success
  end

  test "should get viviendas" do
    get :viviendas
    assert_response :success
  end

  test "should get laboratio" do
    get :laboratio
    assert_response :success
  end

  test "should get construccion" do
    get :construccion
    assert_response :success
  end

end
