require 'test_helper'

class SkateParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skate_park = skate_parks(:one)
  end

  test "should get index" do
    get skate_parks_url
    assert_response :success
  end

  test "should create skate_park" do
    assert_difference('SkatePark.count') do
      post skate_parks_url, params: { skate_park: { address: @skate_park.address, business_category: @skate_park.business_category, latitude: @skate_park.latitude, lga: @skate_park.lga, longitude: @skate_park.longitude, name: @skate_park.name, postcode: @skate_park.postcode, region: @skate_park.region, state: @skate_park.state, suburb: @skate_park.suburb } }
    end

    assert_response 201
  end

  test "should show skate_park" do
    get skate_park_url(@skate_park)
    assert_response :success
  end

  test "should update skate_park" do
    patch skate_park_url(@skate_park), params: { skate_park: { address: @skate_park.address, business_category: @skate_park.business_category, latitude: @skate_park.latitude, lga: @skate_park.lga, longitude: @skate_park.longitude, name: @skate_park.name, postcode: @skate_park.postcode, region: @skate_park.region, state: @skate_park.state, suburb: @skate_park.suburb } }
    assert_response 200
  end

  test "should destroy skate_park" do
    assert_difference('SkatePark.count', -1) do
      delete skate_park_url(@skate_park)
    end

    assert_response 204
  end
end
