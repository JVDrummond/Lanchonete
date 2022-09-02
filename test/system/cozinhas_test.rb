require "application_system_test_case"

class CozinhasTest < ApplicationSystemTestCase
  setup do
    @cozinha = cozinhas(:one)
  end

  test "visiting the index" do
    visit cozinhas_url
    assert_selector "h1", text: "Cozinhas"
  end

  test "creating a Cozinha" do
    visit cozinhas_url
    click_on "New Cozinha"

    fill_in "Id pedido", with: @cozinha.id_pedido
    fill_in "Pedido", with: @cozinha.pedido
    click_on "Create Cozinha"

    assert_text "Cozinha was successfully created"
    click_on "Back"
  end

  test "updating a Cozinha" do
    visit cozinhas_url
    click_on "Edit", match: :first

    fill_in "Id pedido", with: @cozinha.id_pedido
    fill_in "Pedido", with: @cozinha.pedido
    click_on "Update Cozinha"

    assert_text "Cozinha was successfully updated"
    click_on "Back"
  end

  test "destroying a Cozinha" do
    visit cozinhas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cozinha was successfully destroyed"
  end
end
