require 'test_helper'

class BaurusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bauru = baurus(:one)
  end

  test "should get index" do
    get baurus_url
    assert_response :success
  end

  test "should get new" do
    get new_bauru_url
    assert_response :success
  end

  test "should create bauru" do
    assert_difference('Bauru.count') do
      post baurus_url, params: { bauru: { bauru: @bauru.bauru } }
    end

    assert_redirected_to bauru_url(Bauru.last)
  end

  test "should show bauru" do
    get bauru_url(@bauru)
    assert_response :success
  end

  test "should get edit" do
    get edit_bauru_url(@bauru)
    assert_response :success
  end

  test "should update bauru" do
    patch bauru_url(@bauru), params: { bauru: { bauru: @bauru.bauru } }
    assert_redirected_to bauru_url(@bauru)
  end

  test "should destroy bauru" do
    assert_difference('Bauru.count', -1) do
      delete bauru_url(@bauru)
    end

    assert_redirected_to baurus_url
  end
end
