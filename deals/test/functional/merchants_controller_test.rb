require 'test_helper'

class MerchantsControllerTest < ActionController::TestCase
  setup do
    @merchant = merchants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merchants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merchant" do
    assert_difference('Merchant.count') do
      post :create, merchant: @merchant.attributes
    end

    assert_redirected_to merchant_path(assigns(:merchant))
  end

  test "should show merchant" do
    get :show, id: @merchant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merchant.to_param
    assert_response :success
  end

  test "should update merchant" do
    put :update, id: @merchant.to_param, merchant: @merchant.attributes
    assert_redirected_to merchant_path(assigns(:merchant))
  end

  test "should destroy merchant" do
    assert_difference('Merchant.count', -1) do
      delete :destroy, id: @merchant.to_param
    end

    assert_redirected_to merchants_path
  end
end
