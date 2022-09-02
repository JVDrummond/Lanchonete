require 'test_helper'

class FinalizadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finalizado = finalizados(:one)
  end

  test "should get index" do
    get finalizados_url
    assert_response :success
  end

  test "should get new" do
    get new_finalizado_url
    assert_response :success
  end

  test "should create finalizado" do
    assert_difference('Finalizado.count') do
      post finalizados_url, params: { finalizado: { pedido: @finalizado.pedido } }
    end

    assert_redirected_to finalizado_url(Finalizado.last)
  end

  test "should show finalizado" do
    get finalizado_url(@finalizado)
    assert_response :success
  end

  test "should get edit" do
    get edit_finalizado_url(@finalizado)
    assert_response :success
  end

  test "should update finalizado" do
    patch finalizado_url(@finalizado), params: { finalizado: { pedido: @finalizado.pedido } }
    assert_redirected_to finalizado_url(@finalizado)
  end

  test "should destroy finalizado" do
    assert_difference('Finalizado.count', -1) do
      delete finalizado_url(@finalizado)
    end

    assert_redirected_to finalizados_url
  end
end
