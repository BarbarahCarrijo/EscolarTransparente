require 'test_helper'

class TravelRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_route = travel_routes(:one)
  end

  test "should get index" do
    get travel_routes_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_route_url
    assert_response :success
  end

  test "should create travel_route" do
    assert_difference('TravelRoute.count') do
      post travel_routes_url, params: { travel_route: { arrival: @travel_route.arrival, depparture: @travel_route.depparture, driver_id: @travel_route.driver_id } }
    end

    assert_redirected_to travel_route_url(TravelRoute.last)
  end

  test "should show travel_route" do
    get travel_route_url(@travel_route)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_route_url(@travel_route)
    assert_response :success
  end

  test "should update travel_route" do
    patch travel_route_url(@travel_route), params: { travel_route: { arrival: @travel_route.arrival, depparture: @travel_route.depparture, driver_id: @travel_route.driver_id } }
    assert_redirected_to travel_route_url(@travel_route)
  end

  test "should destroy travel_route" do
    assert_difference('TravelRoute.count', -1) do
      delete travel_route_url(@travel_route)
    end

    assert_redirected_to travel_routes_url
  end
end
