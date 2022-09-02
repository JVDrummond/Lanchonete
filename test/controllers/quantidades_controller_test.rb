require 'test_helper'

class QuantidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quantidade = quantidades(:one)
  end

  test "should get index" do
    get quantidades_url
    assert_response :success
  end

  test "should get new" do
    get new_quantidade_url
    assert_response :success
  end

  test "should create quantidade" do
    assert_difference('Quantidade.count') do
      post quantidades_url, params: { quantidade: { quantidade: @quantidade.quantidade } }
    end

    assert_redirected_to quantidade_url(Quantidade.last)
  end

  test "should show quantidade" do
    get quantidade_url(@quantidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_quantidade_url(@quantidade)
    assert_response :success
  end

  test "should update quantidade" do
    patch quantidade_url(@quantidade), params: { quantidade: { quantidade: @quantidade.quantidade } }
    assert_redirected_to quantidade_url(@quantidade)
  end

  test "should destroy quantidade" do
    assert_difference('Quantidade.count', -1) do
      delete quantidade_url(@quantidade)
    end

    assert_redirected_to quantidades_url
  end
end
