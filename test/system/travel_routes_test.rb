require "application_system_test_case"

class TravelRoutesTest < ApplicationSystemTestCase
  setup do
    @travel_route = travel_routes(:one)
  end

  test "visiting the index" do
    visit travel_routes_url
    assert_selector "h1", text: "Travel Routes"
  end

  test "creating a Travel route" do
    visit travel_routes_url
    click_on "New Travel Route"

    fill_in "Arrival", with: @travel_route.arrival
    fill_in "Depparture", with: @travel_route.depparture
    fill_in "Driver", with: @travel_route.driver_id
    click_on "Create Travel route"

    assert_text "Travel route was successfully created"
    click_on "Back"
  end

  test "updating a Travel route" do
    visit travel_routes_url
    click_on "Edit", match: :first

    fill_in "Arrival", with: @travel_route.arrival
    fill_in "Depparture", with: @travel_route.depparture
    fill_in "Driver", with: @travel_route.driver_id
    click_on "Update Travel route"

    assert_text "Travel route was successfully updated"
    click_on "Back"
  end

  test "destroying a Travel route" do
    visit travel_routes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Travel route was successfully destroyed"
  end
end
