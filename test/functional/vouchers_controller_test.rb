require 'test_helper'

class VouchersControllerTest < ActionController::TestCase
  setup do
    @voucher = vouchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vouchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voucher" do
    assert_difference('Voucher.count') do
      post :create, voucher: { description: @voucher.description, expires_on: @voucher.expires_on, from_email: @voucher.from_email, from_name: @voucher.from_name, passcode: @voucher.passcode, title: @voucher.title, to_email: @voucher.to_email, to_name: @voucher.to_name }
    end

    assert_redirected_to voucher_path(assigns(:voucher))
  end

  test "should show voucher" do
    get :show, id: @voucher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voucher
    assert_response :success
  end

  test "should update voucher" do
    put :update, id: @voucher, voucher: { description: @voucher.description, expires_on: @voucher.expires_on, from_email: @voucher.from_email, from_name: @voucher.from_name, passcode: @voucher.passcode, title: @voucher.title, to_email: @voucher.to_email, to_name: @voucher.to_name }
    assert_redirected_to voucher_path(assigns(:voucher))
  end

  test "should destroy voucher" do
    assert_difference('Voucher.count', -1) do
      delete :destroy, id: @voucher
    end

    assert_redirected_to vouchers_path
  end
end
