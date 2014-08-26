require 'test_helper'

class BloknotsControllerTest < ActionController::TestCase
  setup do
    @bloknot = bloknots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloknots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloknot" do
    assert_difference('Bloknot.count') do
      post :create, bloknot: { NameOfBkoknot: @bloknot.NameOfBkoknot }
    end

    assert_redirected_to bloknot_path(assigns(:bloknot))
  end

  test "should show bloknot" do
    get :show, id: @bloknot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloknot
    assert_response :success
  end

  test "should update bloknot" do
    patch :update, id: @bloknot, bloknot: { NameOfBkoknot: @bloknot.NameOfBkoknot }
    assert_redirected_to bloknot_path(assigns(:bloknot))
  end

  test "should destroy bloknot" do
    assert_difference('Bloknot.count', -1) do
      delete :destroy, id: @bloknot
    end

    assert_redirected_to bloknots_path
  end
end
