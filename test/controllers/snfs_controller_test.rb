require 'test_helper'

class SnfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snf = snfs(:one)
  end

  test "should get index" do
    get snfs_url
    assert_response :success
  end

  test "should get new" do
    get new_snf_url
    assert_response :success
  end

  test "should create snf" do
    assert_difference('Snf.count') do
      post snfs_url, params: { snf: { address: @snf.address, contact: @snf.contact, name: @snf.name, number: @snf.number, rating: @snf.rating } }
    end

    assert_redirected_to snf_url(Snf.last)
  end

  test "should show snf" do
    get snf_url(@snf)
    assert_response :success
  end

  test "should get edit" do
    get edit_snf_url(@snf)
    assert_response :success
  end

  test "should update snf" do
    patch snf_url(@snf), params: { snf: { address: @snf.address, contact: @snf.contact, name: @snf.name, number: @snf.number, rating: @snf.rating } }
    assert_redirected_to snf_url(@snf)
  end

  test "should destroy snf" do
    assert_difference('Snf.count', -1) do
      delete snf_url(@snf)
    end

    assert_redirected_to snfs_url
  end
end
