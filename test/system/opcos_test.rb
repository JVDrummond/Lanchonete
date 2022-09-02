require "application_system_test_case"

class OpcosTest < ApplicationSystemTestCase
  setup do
    @opco = opcos(:one)
  end

  test "visiting the index" do
    visit opcos_url
    assert_selector "h1", text: "Opcos"
  end

  test "creating a Opco" do
    visit opcos_url
    click_on "New Opco"

    fill_in "Opcoes", with: @opco.opcoes
    click_on "Create Opco"

    assert_text "Opco was successfully created"
    click_on "Back"
  end

  test "updating a Opco" do
    visit opcos_url
    click_on "Edit", match: :first

    fill_in "Opcoes", with: @opco.opcoes
    click_on "Update Opco"

    assert_text "Opco was successfully updated"
    click_on "Back"
  end

  test "destroying a Opco" do
    visit opcos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opco was successfully destroyed"
  end
end
