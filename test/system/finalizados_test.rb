require "application_system_test_case"

class FinalizadosTest < ApplicationSystemTestCase
  setup do
    @finalizado = finalizados(:one)
  end

  test "visiting the index" do
    visit finalizados_url
    assert_selector "h1", text: "Finalizados"
  end

  test "creating a Finalizado" do
    visit finalizados_url
    click_on "New Finalizado"

    fill_in "Pedido", with: @finalizado.pedido
    click_on "Create Finalizado"

    assert_text "Finalizado was successfully created"
    click_on "Back"
  end

  test "updating a Finalizado" do
    visit finalizados_url
    click_on "Edit", match: :first

    fill_in "Pedido", with: @finalizado.pedido
    click_on "Update Finalizado"

    assert_text "Finalizado was successfully updated"
    click_on "Back"
  end

  test "destroying a Finalizado" do
    visit finalizados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Finalizado was successfully destroyed"
  end
end
