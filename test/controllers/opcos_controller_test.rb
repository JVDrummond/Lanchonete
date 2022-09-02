require 'test_helper'

class OpcosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opco = opcos(:one)
  end

  test "should get index" do
    get opcos_url
    assert_response :success
  end

  test "should get new" do
    get new_opco_url
    assert_response :success
  end

  test "should create opco" do
    assert_difference('Opco.count') do
      post opcos_url, params: { opco: { opcoes: @opco.opcoes } }
    end

    assert_redirected_to opco_url(Opco.last)
  end

  test "should show opco" do
    get opco_url(@opco)
    assert_response :success
  end

  test "should get edit" do
    get edit_opco_url(@opco)
    assert_response :success
  end

  test "should update opco" do
    patch opco_url(@opco), params: { opco: { opcoes: @opco.opcoes } }
    assert_redirected_to opco_url(@opco)
  end

  test "should destroy opco" do
    assert_difference('Opco.count', -1) do
      delete opco_url(@opco)
    end

    assert_redirected_to opcos_url
  end
end
