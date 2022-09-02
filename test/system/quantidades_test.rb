require "application_system_test_case"

class QuantidadesTest < ApplicationSystemTestCase
  setup do
    @quantidade = quantidades(:one)
  end

  test "visiting the index" do
    visit quantidades_url
    assert_selector "h1", text: "Quantidades"
  end

  test "creating a Quantidade" do
    visit quantidades_url
    click_on "New Quantidade"

    fill_in "Quantidade", with: @quantidade.quantidade
    click_on "Create Quantidade"

    assert_text "Quantidade was successfully created"
    click_on "Back"
  end

  test "updating a Quantidade" do
    visit quantidades_url
    click_on "Edit", match: :first

    fill_in "Quantidade", with: @quantidade.quantidade
    click_on "Update Quantidade"

    assert_text "Quantidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Quantidade" do
    visit quantidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quantidade was successfully destroyed"
  end
end
