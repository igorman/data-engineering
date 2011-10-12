require 'test_helper'

class PurchaserDealsControllerTest < ActionController::TestCase
  setup do
    @purchaser_deal = purchaser_deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchaser_deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchaser_deal" do
    assert_difference('PurchaserDeal.count') do
      post :create, purchaser_deal: @purchaser_deal.attributes
    end

    assert_redirected_to purchaser_deal_path(assigns(:purchaser_deal))
  end

  test "should show purchaser_deal" do
    get :show, id: @purchaser_deal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchaser_deal.to_param
    assert_response :success
  end

  test "should update purchaser_deal" do
    put :update, id: @purchaser_deal.to_param, purchaser_deal: @purchaser_deal.attributes
    assert_redirected_to purchaser_deal_path(assigns(:purchaser_deal))
  end

  test "should destroy purchaser_deal" do
    assert_difference('PurchaserDeal.count', -1) do
      delete :destroy, id: @purchaser_deal.to_param
    end

    assert_redirected_to purchaser_deals_path
  end
end
