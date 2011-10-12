require 'test_helper'

class PurchasersControllerTest < ActionController::TestCase
  setup do
    @purchaser = purchasers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchasers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchaser" do
    assert_difference('Purchaser.count') do
      post :create, purchaser: @purchaser.attributes
    end

    assert_redirected_to purchaser_path(assigns(:purchaser))
  end

  test "should show purchaser" do
    get :show, id: @purchaser.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchaser.to_param
    assert_response :success
  end

  test "should update purchaser" do
    put :update, id: @purchaser.to_param, purchaser: @purchaser.attributes
    assert_redirected_to purchaser_path(assigns(:purchaser))
  end

  test "should destroy purchaser" do
    assert_difference('Purchaser.count', -1) do
      delete :destroy, id: @purchaser.to_param
    end

    assert_redirected_to purchasers_path
  end
end
